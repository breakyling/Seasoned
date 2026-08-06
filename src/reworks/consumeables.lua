--[[
Buffed Earth
- Old: +25 chips, +2 mult
- New: +30 chips, +3 mult
]]
SMODS.PokerHand:take_ownership("Full House", {
    l_chips = 30,
    l_mult = 3,
})


--[[
Buffed Lovers
- Increased max cards from 1 to 2
]]
SMODS.Consumable:take_ownership("lovers", {
    config = {
        mod_conv = 'm_wild',
        max_highlighted = 2,
    },
})


--[[
Nerfed Immolate:
- Old: Destroy 5 random cards in hand, gain $20
- New: Destory 3 random cards in hand, gain $10
]]
SMODS.Consumable:take_ownership("immolate", {
    config = {
        remove_card = true,
        extra = {
            destroy = 3,
            dollars = 10,
        },
    },
})
