-- All cards in Standard Packs are now always enchanted
for _, key in ipairs({
    "p_standard_normal_1", "p_standard_normal_2", "p_standard_normal_3", "p_standard_normal_4",
    "p_standard_jumbo_1", "p_standard_jumbo_2", "p_standard_mega_1", "p_standard_mega_2",
}) do
    SMODS.Booster:take_ownership(key, {
        create_card = function(self, card, i)
            local playing_card = SMODS.create_card({
                set = "Base",
                key_append = "sta",
                no_edition = true,
            })
            playing_card:set_ability(SMODS.poll_enhancement({
                guaranteed = true,
                type_key = "standard_enhancement"..G.GAME.round_resets.ante,
            }))
            playing_card:set_edition(poll_edition('standard_edition'..G.GAME.round_resets.ante, 2, true))
            playing_card:set_seal(SMODS.poll_seal({mod = 10}), true, true)
            return playing_card
        end,
    })
end


SMODS.Booster {
    key = "buffoon_uncommon",
    group_key = "k_buffoon_pack",
    atlas = "boosters",
    pos = {x = 2, y = 8},
    config = {extra = 2, choose = 1},
    discovered = true,
    no_collection = true,
    weight = 0,

    loc_vars = function(self, info_queue, card)
        return {vars = {
            card.ability.choose,
            card.ability.extra,
        }}
    end,

    create_card = function(self, card, i)
        local joker = SMODS.create_card({
            set = "Joker",
            key_append = "buf",
            rarity = "Uncommon",
        })
        return joker
    end,
}


SMODS.Booster {
    key = "buffoon_rare",
    group_key = "k_buffoon_pack",
    atlas = "boosters",
    pos = {x = 2, y = 8},
    config = {extra = 2, choose = 1},
    discovered = true,
    no_collection = true,
    weight = 0,

    loc_vars = function(self, info_queue, card)
        return {vars = {
            card.ability.choose,
            card.ability.extra,
        }}
    end,

    create_card = function(self, card, i)
        local joker = SMODS.create_card({
            set = "Joker",
            key_append = "buf",
            rarity = "Rare",
        })
        return joker
    end,
}


SMODS.Booster {
    key = "buffoon_foil",
    group_key = "k_buffoon_pack",
    atlas = "boosters",
    pos = {x = 2, y = 8},
    config = {extra = 2, choose = 1},
    discovered = true,
    no_collection = true,
    weight = 0,

    loc_vars = function(self, info_queue, card)
        return {vars = {
            card.ability.choose,
            card.ability.extra,
        }}
    end,

    create_card = function(self, card, i)
        local joker = SMODS.create_card({
            set = "Joker",
            key_append = "buf",
            edition = "e_foil",
        })
        return joker
    end,
}


SMODS.Booster {
    key = "buffoon_holographic",
    group_key = "k_buffoon_pack",
    atlas = "boosters",
    pos = {x = 2, y = 8},
    config = {extra = 2, choose = 1},
    discovered = true,
    no_collection = true,
    weight = 0,

    loc_vars = function(self, info_queue, card)
        return {vars = {
            card.ability.choose,
            card.ability.extra,
        }}
    end,

    create_card = function(self, card, i)
        local joker = SMODS.create_card({
            set = "Joker",
            key_append = "buf",
            edition = "e_holo",
        })
        return joker
    end,
}


SMODS.Booster {
    key = "buffoon_polychrome",
    group_key = "k_buffoon_pack",
    atlas = "boosters",
    pos = {x = 2, y = 8},
    config = {extra = 2, choose = 1},
    discovered = true,
    no_collection = true,
    weight = 0,

    loc_vars = function(self, info_queue, card)
        return {vars = {
            card.ability.choose,
            card.ability.extra,
        }}
    end,

    create_card = function(self, card, i)
        local joker = SMODS.create_card({
            set = "Joker",
            key_append = "buf",
            edition = "e_polychrome",
        })
        return joker
    end,
}


SMODS.Booster {
    key = "buffoon_negative",
    group_key = "k_buffoon_pack",
    atlas = "boosters",
    pos = {x = 2, y = 8},
    config = {extra = 2, choose = 1},
    discovered = true,
    no_collection = true,
    weight = 0,

    loc_vars = function(self, info_queue, card)
        return {vars = {
            card.ability.choose,
            card.ability.extra,
        }}
    end,

    create_card = function(self, card, i)
        local joker = SMODS.create_card({
            set = "Joker",
            key_append = "buf",
            edition = "e_negative",
        })
        return joker
    end,
}