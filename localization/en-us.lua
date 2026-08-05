return {
    descriptions = {
        Back = {
            b_red = {
                text = {
                    "{C:red}+#1#{} discard every round",
                },
            },
            b_blue = {
                text = {
                    "{C:blue}+#1#{} hands every round",
                    "{C:red}-#2#{} discards every round",
                },
            },
            b_yellow = {
                text = {
                    "Start with extra {C:money}$#1#{}",
                    "Blinds give {C:money}$#2#{} less",
                },
            },
            b_black = {
                text = {
                    "{C:attention}+#1#{} Joker slot",
                    "{C:blue}-#2#{} discard",
                    "every round",
                },
            },
        },
        Joker = {
            j_loyalty_card = {
                text = {
                    "{X:mult,C:white}X#1#{} Mult every",
                    "{C:attention}#2#{} cards scored",
                    "{C:inactive}(#3# remaining){}",
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
                    "All {C:attention}Blinds{} in final {C:attention}Ante{}",
                    "are {C:attention}Boss Blinds{}",
                    "{s:0.8}Applies all previous Stakes{}",
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
            blue_seal = {
                name = "Blue Seal",
                text = {
                    "Drawn first when",
                    "{C:attention}Blind{} is selected",
                },
            },
        },
    },
    misc = {
        dictionary = {
            k_inactive = "inactive",
        },
    },
}