local function activate(card)
    G.E_MANAGER:add_event(Event({
        func = function()
            if not card.ability.extra.active then
                G.hand:change_size(card.ability.extra.hand_size)
                card.ability.extra.active = true
            end
            return true
        end
    }))
end

local function deactivate(card)
    G.E_MANAGER:add_event(Event({
        func = function()
            if card.ability.extra.active then
                G.hand:change_size(-card.ability.extra.hand_size)
                card.ability.extra.active = false
            end
            return true
        end
    }))
end

local function update(card)
    local gold_count = 0

    for _, hand_card in ipairs(G.hand.cards) do
        if SMODS.has_enhancement(hand_card, "m_gold") then
            gold_count = gold_count + 1
        end
    end

    if gold_count > card.ability.extra.required then
        activate(card)
    else
        local did_deactivate = card.ability.extra.active
        deactivate(card)
        return did_deactivate
    end
end


SMODS.Joker {
    key = "golden_thumb",
    atlas = "jokers",
    pos = {x = 3, y = 0},
    rarity = 2,
    cost = 6,
    config = { extra = {
        hand_size = 2,
        required = 1,
        active = false,
    }},
    blueprint_compat = false,
    order = 365004,

    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.hand_size,
                card.ability.extra.required,
            },
            main_end = {{
                n = G.UIT.C,
                config = {align = "bm", minh = 0.4},
                nodes = {{
                    n = G.UIT.C,
                    config = {
                        ref_table = card,
                        align = "m",
                        colour = card.ability.extra.active and G.C.GREEN or G.C.RED,
                        r = 0.05, padding = 0.06,
                    },
                    nodes = {{
                        n = G.UIT.T,
                        config = {
                            text = " " .. (card.ability.extra.active and localize("k_active") or localize("k_inactive")) .. " ",
                            colour = G.C.UI.TEXT_LIGHT,
                            scale = 0.32 * 0.9,
                        },
                    }},
                }},
            }},
        }
    end,

    add_to_deck = function(self, card, from_debuff)
        update(card)
    end,

    remove_from_deck = function(self, card, from_debuff)
        update(card)
    end,

    calculate = function(self, card, context)
        if G.GAME.blind and context.hand_drawn then
            update(card)
        end

        if G.GAME.blind and context.drawing_cards then
            if update(card) then
                return {cards_to_draw = context.amount - card.ability.extra.hand_size}
            end
        end

        if context.end_of_round and card.ability.extra.active then
            G.hand:change_size(-card.ability.extra.hand_size)
            card.ability.extra.active = false
        end
    end,
}