--[[
Changed Blue Deck:
- Old: +1 hand every round
- New: +2 hands every round, -2 hands every round
]]
SMODS.Back:take_ownership("blue", {
    config = {
        hands = 2,
        discards = -2,
    },

    loc_vars = function(self, info_queue, card)
        return {vars = {
            self.config.hands,
            math.abs(self.config.discards),
        }}
    end,
})


--[[
Changed Yellow Deck:
- Old: Start with extra $10
- New: Start with extra $15, Blinds give $1 less
]]
SMODS.Back:take_ownership("yellow", {
    config = {
        dollars = 15,
        blind_reward_bonus = -1,
    },

    loc_vars = function(self, info_queue, card)
        return {vars = {
            self.config.dollars,
            math.abs(self.config.blind_reward_bonus),
        }}
    end,
})


--[[
Changed Black Deck:
- Old: +1 Joker slot, -1 hand every round
- New: +1 Joker slot, Shop Jokers can be Eternal or Perishable
]]
SMODS.Back:take_ownership("black", {
    config = {
        joker_slot = 1,
    },

    loc_vars = function(self, info_queue, card)
        return {vars = {
            self.config.joker_slot,
        }}
    end,

    apply = function(self, back)
        G.GAME.modifiers.enable_eternals_in_shop = true
        G.GAME.modifiers.enable_perishables_in_shop = true
    end,
})