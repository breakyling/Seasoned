if not JokerDisplay then return end
local jd_def = JokerDisplay.Definitions -- You can assign it to a variable to use as shorthand


jd_def["j_loyalty_card"] = {
    text = {{
        border_nodes = {
            {text = "X"},
            {ref_table = "card.joker_display_values", ref_value = "xmult", retrigger_type = "exp"},
        },
    }},
    reminder_text = {
        {text = "("},
        {ref_table = "card.joker_display_values", ref_value = "loyalty_text"},
        {text = ")"},
    },
    calc_function = function(card)
        if G.play and #G.play.cards > 0 then return end

        local scored = 0

        if G.hand and #G.hand.highlighted > 0 then
            local _, _, scoring_hand = JokerDisplay.evaluate_hand()

            for _, scoring_card in ipairs(scoring_hand) do
                scored = scored + JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
            end
        end

        card.joker_display_values.will_activate = scored >= card.ability.extra.remaining
        card.joker_display_values.xmult = card.joker_display_values.will_activate and card.ability.extra.xmult or 1

        if card.joker_display_values.will_activate then
            card.joker_display_values.loyalty_text = localize{
                type = 'variable',
                key = 'loyalty_active',
            }
        else
            card.joker_display_values.loyalty_text = localize{
                type = 'variable',
                key = 'loyalty_inactive',
                vars = {card.ability.extra.remaining - scored}
            }
        end
    end
}


jd_def["j_superposition"] = {}