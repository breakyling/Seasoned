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
                    "+1 Joker slot",
                    "Shop can have {C:attention}Eternal{}",
                    "or {C:attention}Perishable{} Jokers",
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
            j_ssnd_farmer_joker = {
                name = "Farmer Joker",
                text = {
                    "{C:red}+#1#{} discard limit",
                },
            },
            j_ssnd_startup_fund = {
                name = "Startup Fund",
                text = {
                    "Gain {C:money}$#1#{}",
                },
            },
            j_ssnd_seasonal_joker = {
                name = "Seasonal Joker",
                text = {{
                    "Create a suit-changing",
                    "{C:tarot}Tarot{} card when",
                    "{C:attention}Blind{} is selected",
                    "{C:inactive}(Must have room){}",
                }, {
                    "The created {C:tarot}Tarot{}",
                    "card sells for {C:money}$0{}",
                }},
            },
            j_ssnd_golden_thumb = {
                name = "Golden Thumb",
                text = {
                    "{C:attention}+#1#{} hand size if at",
                    "least {C:attention}#2# Gold{} card",
                    "is held in hand",
                },
            },
            j_ssnd_harvesting_scythe = {
                name = "Harvesting Scythe",
                text = {{
                    "Draw {C:attention}#1#{} additional",
                    "cards at the start",
                    "of each round",
                }, {
                    "{C:red}+#2#{} discard limit",
                    "on the first",
                    "discard each round",
                }},
            },
        },
        Stake = {
            stake_red = {
                text = {
                    "Blinds give {C:money}$1{} less",
                    "{s:0.8}Applies all previous Stakes{}",
                },
            },
            stake_black = {
                text = {
                    "Start with 8 {C:attention}Eternal{}",
                    "{C:attention}Bricks{} in your deck",
                    "{s:0.8}Applies all previous Stakes{}",
                },
            },
            stake_blue = {
                text = {
                    "{C:red}Rare{} and {C:legendary,E:1}Legendary{} {C:attention}Jokers{}",
                    "appear half as often",
                    "{s:0.8}Applies all previous Stakes{}",
                },
            },
            stake_orange = {
                text = {
                    "Beat {C:attention}Ante 10{} to win",
                    "{s:0.8}Applies all previous Stakes{}",
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
        Enhanced = {
            m_wild = {
                text = {
                    "Can be used as any",
                    "suit and cannot",
                    "be debuffed",
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