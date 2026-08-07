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
Changed Black Deck:
- Old: +1 Joker slot, -1 hand every round
- New: +1 Joker slot, -1 discard every round
]]
SMODS.Back:take_ownership("black", {
    config = {
        joker_slot = 1,
        discards = -1,
    },

    loc_vars = function(self, info_queue, card)
        return {vars = {
            self.config.joker_slot,
            math.abs(self.config.discards),
        }}
    end,
})