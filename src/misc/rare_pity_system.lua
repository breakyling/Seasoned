--[[
This file changes the poll_rarity function by adding a pity system for rare jokers.
"Pity" is a new variable added to the base rarity of a rare joker (which is 0.05).
At the start of a run, pity is -0.05 (so the chances of rolling a rare joker is 0).
Pity increases by 0.01 every time a rare joker was not rolled.
When a rare joker appears, the pity is reset to -0.05.
At Blue stake or higher, the base chance is reduced to 0.025, and the increment is reduced from 0.01 to 0.005.
]]

SMODS.poll_rarity = function(_pool_key, _rand_key)
    local rarity_poll = pseudorandom(pseudoseed(_rand_key or ('rarity'..G.GAME.round_resets.ante))) -- Generate the poll value
    local available_rarities = copy_table(SMODS.ObjectTypes[_pool_key].rarities) -- Table containing a list of rarities and their rates
    local vanilla_rarities = {["Common"] = 1, ["Uncommon"] = 2, ["Rare"] = 3, ["Legendary"] = 4}

    -- Custom rarity system with pity system (by Seasoned)
    local rare_chance = math.max(0, G.GAME.starting_params.rare_chance.base + G.GAME.starting_params.rare_chance.pity)
    for _, v in ipairs(available_rarities) do
        if v.key == "Common" then
            v.weight = math.max(0, 0.75 - rare_chance)
        elseif v.key == "Uncommon" then
            v.weight = 0.25
        elseif v.key == "Rare" then
            v.weight = rare_chance
        end
    end

	-- Check to see if any rarities are empty and should be disabled
    for _, v in ipairs(available_rarities) do
        local _pool = get_current_pool("Joker", v.key, false, nil)
        if #_pool == 1 and _pool[1] == "empty_rarity" then
            SMODS.remove_pool(available_rarities, v.key)
        end
    end
    G.ARGS.TEMP_POOL = EMPTY(G.ARGS.TEMP_POOL)

    -- Calculate total rates of rarities
    local total_weight = 0
    for _, v in ipairs(available_rarities) do
        v.mod = G.GAME[tostring(v.key):lower().."_mod"] or 1
        -- Should this fully override the v.weight calcs?
        if SMODS.Rarities[v.key] and SMODS.Rarities[v.key].get_weight and type(SMODS.Rarities[v.key].get_weight) == "function" then
            v.weight = SMODS.Rarities[v.key]:get_weight(v.weight, SMODS.ObjectTypes[_pool_key])
        end
        v.weight = v.weight*v.mod
        total_weight = total_weight + v.weight
    end
    -- recalculate rarities to account for v.mod
    for _, v in ipairs(available_rarities) do
        v.weight = v.weight / total_weight
    end

    -- Calculate selected rarity
    local weight_i = 0
    for _, v in ipairs(available_rarities) do
        weight_i = weight_i + v.weight
        if rarity_poll < weight_i then
            -- Increase pity on fail, reset pity on success (by Seasoned)
            if v.key == "Common" or v.key == "Uncommon" then
                G.GAME.starting_params.rare_chance.pity = G.GAME.starting_params.rare_chance.pity + G.GAME.starting_params.rare_chance.increment
            else
                G.GAME.starting_params.rare_chance.pity = -0.05
            end

            if vanilla_rarities[v.key] then
                return vanilla_rarities[v.key]
            else
                return v.key
            end
        end
    end
    return nil
end