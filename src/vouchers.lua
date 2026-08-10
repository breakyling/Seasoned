-- Illusion: When you buy a card from the shop, duplicate it
SMODS.Voucher:take_ownership("illusion", {
    calculate = function(self, card, context)
        if context.buying_card and SMODS.is_playing_card(context.card) then
            SMODS.copy_card(context.card)
        end
    end,
})
