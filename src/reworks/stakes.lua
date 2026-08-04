--[[
Changed Red Stake:
- Old: "Small Blinds give no reward money"
- New: "Blinds give $1 less reward"
]]
SMODS.Stake:take_ownership("red", {
    modifiers = function()
        G.GAME.starting_params.blind_reward_bonus = G.GAME.starting_params.blind_reward_bonus - 1
    end,
})


--[[
Changed Black Stake:
- Old: Shop can have Eternal Jokers
- New: Start with 8 Eternal Bricks in your deck
]]
SMODS.Stake:take_ownership("black", {
    modifiers = function()
        G.E_MANAGER:add_event(Event({
            func = function()
                for _ = 1, 2 do
                    for key, _ in pairs(SMODS.Suits) do
                        local brick = SMODS.create_card({
                            set = "Base",
                            rank = "2",
                            suit = key,
                            enhancement = "m_ssnd_brick",
                            key_append = "black_stake",
                        })
                        brick.ability.eternal = true
                        SMODS.add_to_deck(brick, {area = G.deck})
                    end
                end
                return true
            end
        }))
    end,
})


--[[
Changed Blue Stake:
- Old: -1 discard
- New: Rare and Legendary jokers appear half as often
]]
SMODS.Stake:take_ownership("blue", {
    modifiers = function()
        G.GAME.starting_params.rare_chance.base = G.GAME.starting_params.rare_chance.base / 2
        G.GAME.starting_params.rare_chance.increment = G.GAME.starting_params.rare_chance.increment / 2
        G.GAME.starting_params.soul_chance = G.GAME.starting_params.soul_chance / 2
    end,
})


--[[
Changed Orange Stake:
- Old: Shop can have Perishable Jokers
- New: Beat Ante 10 to win
]]
SMODS.Stake:take_ownership("orange", {
    modifiers = function()
        G.GAME.win_ante = 10
    end,
})


--[[
Changed Gold Stake:
- Old: Shop can have Rental Jokers
- New: All Blinds in last ante are Boss Blinds
]]
SMODS.Stake:take_ownership("gold", {
    modifiers = function()
        G.GAME.modifiers.boss_rush = true
    end,
})