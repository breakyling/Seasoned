-- All cards in Standard Packs are now always enchanted
local new_create_card = function(self, card, i)
    card = SMODS.create_card({
        set = "Base",
        key_append = "sta",
        no_edition = true,
    })
    card:set_ability(SMODS.poll_enhancement({
        guaranteed = true,
        type_key = "standard_enhancement"..G.GAME.round_resets.ante,
    }))
    card:set_edition(poll_edition('standard_edition'..G.GAME.round_resets.ante, 2, true))
    card:set_seal(SMODS.poll_seal({mod = 10}), true, true)
    return card
end

for _, key in ipairs({
    "p_standard_normal_1", "p_standard_normal_2", "p_standard_normal_3", "p_standard_normal_4",
    "p_standard_jumbo_1", "p_standard_jumbo_2", "p_standard_mega_1", "p_standard_mega_2",
}) do
    SMODS.Booster:take_ownership(key, {
        create_card = new_create_card
    })
end


-- Illusion: When you buy a card from the shop, duplicate it
SMODS.Voucher:take_ownership("illusion", {
    calculate = function(self, card, context)
        if context.buying_card and SMODS.is_playing_card(context.card) then
            SMODS.copy_card(context.card)
        end
    end,
})