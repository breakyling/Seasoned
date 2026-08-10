return {
    descriptions = {
        Back = {
            b_blue = {
                text = {
                    "{C:blue}+#1#{} hands",
                    "every round",
                    "{C:red}-#2#{} discards",
                    "every round",
                },
            },
            b_black = {
                text = {
                    "{C:attention}+#1#{} Joker slot",
                    "{C:red}-#2#{} discard",
                    "every round",
                },
            },
        },
        Joker = {
            j_loyalty_card = {
                text = {
                    "{X:mult,C:white}X#1#{} Mult every",
                    "{C:attention}#2#{} cards scored",
                    "{C:inactive}(#3#){}",
                },
            },
            j_superposition = {
                text = {
                    "{C:attention}Straights{} can",
                    "wrap around",
                    "{C:inactive}(ex:{} {C:attention}3 2 A K Q{}{C:inactive}){}",
                },
            },
        },
        Stake = {
            stake_red = {
                text = {
                    "Blinds give {C:money}$1{} less",
                    "{s:0.8}Applies all previous Stakes{}",
                },
            },
            stake_blue = {
                text = {
                    "Shop can have {C:attention}Perishable{} Jokers",
                    "{C:inactive,s:0.8}(Debuffed after 5 Rounds)",
                    "{s:0.8}Applies all previous Stakes",
                },
            },
            stake_orange = {
                text = {
                    "Shop can have {C:attention}Rental{} Jokers",
                    "{C:inactive,s:0.8}(Costs {C:money,s:0.8}$3{C:inactive,s:0.8} per round)",
                    "{s:0.8}Applies all previous Stakes",
                },
            },
            stake_gold = {
                text = {
                    "Beat {C:attention}Ante 10{} to win",
                    "{s:0.8}Applies all previous Stakes{}",
                },
            },
        },
        Tag = {
            tag_uncommon = {
                name = "Uncommon Tag",
                text = {
                    "Gives a free",
                    "{C:attention}Uncommon Buffoon Pack{}",
                },
            },
            tag_rare = {
                name = "Rare Tag",
                text = {
                    "Gives a free",
                    "{C:attention}Rare Buffoon Pack{}",
                },
            },
            tag_foil = {
                name = "Foil Tag",
                text = {
                    "Gives a free",
                    "{C:attention}Foil Buffoon Pack{}",
                },
            },
            tag_holo = {
                name = "Holographic Tag",
                text = {
                    "Gives a free",
                    "{C:attention}Holographic Buffoon Pack{}",
                },
            },
            tag_polychrome = {
                name = "Polychrome Tag",
                text = {
                    "Gives a free",
                    "{C:attention}Polychrome Buffoon Pack{}",
                },
            },
            tag_negative = {
                name = "Negative Tag",
                text = {
                    "Gives a free",
                    "{C:attention}Negative Buffoon Pack{}",
                },
            },
        },
        Tarot = {
            c_lovers = {
                name = "The Lovers",
                text = {
                    "Enhances {C:attention}#1#{} selected",
                    "cards into a",
                    "{C:attention}#2#{}",
                },
            },
        },
        Voucher = {
            v_magic_trick = {
                name = "Magic Trick",
                text = {
                    "{C:attention}Enhanced playing cards{}",
                    "can be purchased",
                    "from the {C:attention}shop{}",
                    "{s:0.8}(Playing cards may have{}",
                    "{s:0.8}an {}{s:0.8,C:dark_edition}Edition{}{s:0.8} and/or a {}{s:0.8,C:attention}Seal{}{s:0.8}){}",
                },
            },
            v_illusion = {
                name = "Illusion",
                text = {
                    "When you obtain a {C:attention}playing{}",
                    "{C:attention}card{} from the {C:attention}shop{} or",
                    "from a {C:attention}Standard Pack{}, get an",
                    "extra copy of the card",
                },
            },
        },
        Other = {
            p_ssnd_buffoon_uncommon = {
                name = "Uncommon Buffoon Pack",
                text = {
                    "Choose {C:attention}#1#{} of up to",
                    "{C:attention}#2#{} {C:green}Uncommon{} {C:joker}Jokers{}",
                },
            },
            p_ssnd_buffoon_rare = {
                name = "Rare Buffoon Pack",
                text = {
                    "Choose {C:attention}#1#{} of up to",
                    "{C:attention}#2#{} {C:red}Rare{} {C:joker}Joker{} cards",
                },
            },
            p_ssnd_buffoon_foil = {
                name = "Foil Buffoon Pack",
                text = {
                    "Choose {C:attention}#1#{} of up to",
                    "{C:attention}#2#{} {C:dark_edition}Foil{} {C:joker}Joker{} cards",
                },
            },
            p_ssnd_buffoon_holographic = {
                name = "Holographic Buffoon Pack",
                text = {
                    "Choose {C:attention}#1#{} of up to",
                    "{C:attention}#2#{} {C:dark_edition}Holographic{} {C:joker}Joker{} cards",
                },
            },
            p_ssnd_buffoon_polychrome = {
                name = "Polychrome Buffoon Pack",
                text = {
                    "Choose {C:attention}#1#{} of up to",
                    "{C:attention}#2#{} {C:dark_edition}Polychrome{} {C:joker}Joker{} cards",
                },
            },
            p_ssnd_buffoon_negative = {
                name = "Negative Buffoon Pack",
                text = {
                    "Choose {C:attention}#1#{} of up to",
                    "{C:attention}#2#{} {C:dark_edition}Negative{} {C:joker}Joker{} cards",
                },
            },
        },
    },
}