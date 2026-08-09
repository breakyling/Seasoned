-- Greedy Joker: +3 Mult -> +4 Mult
SMODS.Joker:take_ownership("greedy_joker", {
    config = {
        extra = {
            s_mult = 4,
            suit = "Diamonds",
        }
    },
})

-- Lusty Joker: +3 Mult -> +4 Mult
SMODS.Joker:take_ownership("lusty_joker", {
    config = {
        extra = {
            s_mult = 4,
            suit = "Hearts",
        }
    },
})

-- Wrathful Joker: +3 Mult -> +4 Mult
SMODS.Joker:take_ownership("wrathful_joker", {
    config = {
        extra = {
            s_mult = 4,
            suit = "Spades",
        }
    },
})

-- Gluttenous Joker: +3 Mult -> +4 Mult
SMODS.Joker:take_ownership("gluttenous_joker", {
    config = {
        extra = {
            s_mult = 4,
            suit = "Clubs",
        }
    },
})

-- Nerfed Photograph: Common ($4) -> Uncommon ($5)
SMODS.Joker:take_ownership("hanging_chad", {
    rarity = 2,
    cost = 5,
})

-- Nerfed Hanging Chad: Common ($4) -> Uncommon ($6)
SMODS.Joker:take_ownership("hanging_chad", {
    rarity = 2,
    cost = 6,
})

-- Nerfed Mail and Rebate: Money gain reduced from $5 to $2
SMODS.Joker:take_ownership("mail", {
    config = {extra = 2},
})

--[[
Changed Loyalty Card
- Old: x3 Mult for every hands played ($5)
- New: x3 Mult for every 10 cards scored ($6)
]]
SMODS.Joker:take_ownership("loyalty_card", {
    cost = 6,

    config = {extra = {
        xmult = 3,
        every = 10,
        remaining = 10,
        active = false,
    }},

    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.xmult,
                card.ability.extra.every,
                localize{
                    type = 'variable',
                    key = 'loyalty_inactive',
                    vars = {card.ability.extra.remaining}
                },
            },
        }
    end,

    calculate = function(self, card, context)
        if context.cardarea == G.play and context.individual then
            card.ability.extra.remaining = card.ability.extra.remaining - 1

            if card.ability.extra.remaining <= 0 then
                card.ability.extra.remaining = card.ability.extra.every
                card.ability.extra.active = true
            end
        end

        if context.joker_main and card.ability.extra.active then
            card.ability.extra.active = false
            return {xmult = card.ability.extra.xmult}
        end
    end,
})

--[[
Changed Superposition
- Old: Create a Tarot card if poker hand contains an Ace and a Straight
- New: Straights can wrap around
- Rarity increased from Common to Uncommon
- Cost increased from $4 to $5
]]
SMODS.Joker:take_ownership("superposition", {
    rarity = 2,
    cost = 5,
    blueprint_compat = false,
    calculate = function() return {} end,

    joker_display_def = function()
        --@type JDJokerDefinition
        return {text = {}, reminder_text = {}}
    end,
})
local old_wrap_around_straight = SMODS.wrap_around_straight
SMODS.wrap_around_straight = function(self)
    if next(SMODS.find_card('j_superposition')) then
        return true
    end
    return old_wrap_around_straight(self)
end
