SMODS.Joker {
    key = "seasonal_joker",
    atlas = "jokers",
    pos = {x = 2, y = 0},
    rarity = 2,
    cost = 5,
    order = 365003,

    calculate = function(self, card, context)
        if context.setting_blind and not (context.blueprint_card or self).getting_sliced
        and #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
            G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
            G.E_MANAGER:add_event(Event({
                func = function()
                    local tarot = SMODS.create_card({
                        set = "Tarot",
                        key = pseudorandom_element({"c_star", "c_moon", "c_sun", "c_world"}, pseudoseed("seasonal_joker")),
                        no_edition = true,
                        key_append = "seasonal_joker",
                    })
                    tarot.sell_cost = 0
                    SMODS.add_to_deck(tarot, {area = G.consumeables})
                    G.GAME.consumeable_buffer = 0
                    return true
                end
            }))
        end
    end,
}