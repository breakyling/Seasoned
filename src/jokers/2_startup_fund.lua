SMODS.Joker {
    key = "startup_fund",
    atlas = "jokers",
    pos = {x = 1, y = 0},
    rarity = 1,
    cost = 0,
    config = {extra = {
        dollars = 10,
        force_cost = true,
    }},
    blueprint_compat = false,
    perishable_compat = false,
    order = 365002,

    loc_vars = function(self, info_queue, card)
        return {vars = {
            card.ability.extra.dollars,
        }}
    end,

    in_pool = function(self, args)
        return args and args.source and (args.source == "sho" or args.source == "buf")
    end,

    set_ability = function(self, card, initial, delay_sprites)
        card:set_eternal(true)
    end,
    
    add_to_deck = function(self, card, from_debuff)
        ease_dollars(card.ability.extra.dollars)
    end,
}