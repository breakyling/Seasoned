local activate = function(card)
    G.E_MANAGER:add_event(Event({
        func = function()
            if not card.ability.extra.active then
                SMODS.change_discard_limit(card.ability.extra.discard_limit)
                card.ability.extra.active = true
            end
            return true
        end,
    }))
end

local deactivate = function(card)
    G.E_MANAGER:add_event(Event({
        func = function()
            if card.ability.extra.active then
                SMODS.change_discard_limit(-card.ability.extra.discard_limit)
                card.ability.extra.active = false
            end
            return true
        end,
    }))
end



SMODS.Joker {
    key = "harvesting_scythe",
    atlas = "jokers",
    pos = {x = 4, y = 0},
    rarity = 3,
    cost = 8,
    config = {extra = {
        draw = 4,
        discard_limit = 4,
        active = false,
    }},
    blueprint_compat = false,
    order = 365005,

    loc_vars = function(self, info_queue, card)
        return {vars = {
            card.ability.extra.draw,
            card.ability.extra.discard_limit,
        }}
    end,

    add_to_deck = function(self, card, from_debuff)
        if G.GAME.blind and G.GAME.current_round and G.GAME.current_round.discards_used == 0 then
            activate(card)
        end
    end,

    remove_from_deck = function(self, card, from_debuff)
        deactivate(card)
    end,

    calculate = function(self, card, context)
        if context.first_hand_drawn then
            G.E_MANAGER:add_event(Event({
                func = function()
                    SMODS.draw_cards(card.ability.extra.draw)
                    return true
                end,
            }))
            activate(card)
        end

        if context.pre_discard then
            deactivate(card)
        end
    end,
}