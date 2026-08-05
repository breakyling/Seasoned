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
Changed Blue Stake:
- Old: -1 discard
- New: Shop can have Perishable Jokers
]]
SMODS.Stake:take_ownership("blue", {
    modifiers = function()
        G.GAME.modifiers.enable_perishables_in_shop = true
    end,
})


--[[
Changed Orange Stake:
- Old: Shop can have Perishable Jokers
- New: Shop can have Rental Jokers
]]
SMODS.Stake:take_ownership("orange", {
    modifiers = function()
        G.GAME.modifiers.enable_eternals_in_shop = true
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