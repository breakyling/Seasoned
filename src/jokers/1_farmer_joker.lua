SMODS.Joker {
    key = "farmer_joker",
    atlas = "jokers",
    pos = {x = 0, y = 0},
    rarity = 1,
    cost = 4,
    config = {extra = 1},
    blueprint_compat = false,
    order = 365001,

    loc_vars = function(self, info_queue, card)
        return {vars = {
            card.ability.extra,
        }}
    end,
    
    add_to_deck = function(self, card, from_debuff)
        SMODS.change_discard_limit(card.ability.extra)
    end,
    
    remove_from_deck = function(self, card, from_debuff)
        SMODS.change_discard_limit(-card.ability.extra)
    end,
}