--[[
Changed Double Tag
- No longer appears as a Skip Tag
]]
SMODS.Tag:take_ownership("double", {
    in_pool = function(self, args) return false end,
})


--[[
Changed Uncommon Tag
- Old: Shop has a free Uncommon Joker
- New: Gives a free Uncommon Buffoon Pack (Choose 1 of up to 2 Uncommon Joker cards)
- Now only appears starting Ante 2
]]
SMODS.Tag:take_ownership("uncommon", {
    min_ante = 2,

    loc_vars = function(self, info_queue, tag)
        info_queue[#info_queue + 1] = G.P_CENTERS.p_ssnd_buffoon_uncommon
    end,

    apply = function(self, tag, context)
        if context.type == "new_blind_choice" then
            local lock = tag.ID
            G.CONTROLLER.locks[lock] = true
            tag:yep('+', G.C.SECONDARY_SET.Spectral, function()
                local booster = SMODS.create_card { key = "p_ssnd_buffoon_uncommon", area = G.play }
                booster.T.x = G.play.T.x + G.play.T.w / 2 - G.CARD_W * 1.27 / 2
                booster.T.y = G.play.T.y + G.play.T.h / 2 - G.CARD_H * 1.27 / 2
                booster.T.w = G.CARD_W * 1.27
                booster.T.h = G.CARD_H * 1.27
                booster.cost = 0
                booster.from_tag = true
                G.FUNCS.use_card({ config = { ref_table = booster } })
                booster:start_materialize()
                G.CONTROLLER.locks[lock] = nil
                return true
            end)
            tag.triggered = true
            return true
        end
    end,
})


--[[
Changed Rare Tag
- Old: Shop has a free Rare Joker
- New: Gives a free Rare Buffoon Pack (Choose 1 of up to 2 Rare Joker cards)
- Now only appears starting Ante 2
]]
SMODS.Tag:take_ownership("rare", {
    min_ante = 2,

    loc_vars = function(self, info_queue, tag)
        info_queue[#info_queue + 1] = G.P_CENTERS.p_ssnd_buffoon_rare
    end,

    apply = function(self, tag, context)
        if context.type == "new_blind_choice" then
            local lock = tag.ID
            G.CONTROLLER.locks[lock] = true
            tag:yep('+', G.C.SECONDARY_SET.Spectral, function()
                local booster = SMODS.create_card { key = "p_ssnd_buffoon_rare", area = G.play }
                booster.T.x = G.play.T.x + G.play.T.w / 2 - G.CARD_W * 1.27 / 2
                booster.T.y = G.play.T.y + G.play.T.h / 2 - G.CARD_H * 1.27 / 2
                booster.T.w = G.CARD_W * 1.27
                booster.T.h = G.CARD_H * 1.27
                booster.cost = 0
                booster.from_tag = true
                G.FUNCS.use_card({ config = { ref_table = booster } })
                booster:start_materialize()
                G.CONTROLLER.locks[lock] = nil
                return true
            end)
            tag.triggered = true
            return true
        end
    end,
})


--[[
Changed Foil Tag
- Old: Next base edition shop Joker is free and becomes Foil
- New: Gives a free Foil Buffoon Pack (Choose 1 of up to 2 Foil Joker cards)
- Now only appears starting Ante 2
]]
SMODS.Tag:take_ownership("foil", {
    min_ante = 2,

    loc_vars = function(self, info_queue, tag)
        info_queue[#info_queue + 1] = G.P_CENTERS.p_ssnd_buffoon_foil
    end,

    apply = function(self, tag, context)
        if context.type == "new_blind_choice" then
            local lock = tag.ID
            G.CONTROLLER.locks[lock] = true
            tag:yep('+', G.C.SECONDARY_SET.Spectral, function()
                local booster = SMODS.create_card { key = "p_ssnd_buffoon_foil", area = G.play }
                booster.T.x = G.play.T.x + G.play.T.w / 2 - G.CARD_W * 1.27 / 2
                booster.T.y = G.play.T.y + G.play.T.h / 2 - G.CARD_H * 1.27 / 2
                booster.T.w = G.CARD_W * 1.27
                booster.T.h = G.CARD_H * 1.27
                booster.cost = 0
                booster.from_tag = true
                G.FUNCS.use_card({ config = { ref_table = booster } })
                booster:start_materialize()
                G.CONTROLLER.locks[lock] = nil
                return true
            end)
            tag.triggered = true
            return true
        end
    end,
})


--[[
Changed Holographic Tag
- Old: Next base edition shop Joker is free and becomes Holographic
- New: Gives a free Holographic Buffoon Pack (Choose 1 of up to 2 Holographic Joker cards)
- Now only appears starting Ante 2
]]
SMODS.Tag:take_ownership("holo", {
    min_ante = 2,

    loc_vars = function(self, info_queue, tag)
        info_queue[#info_queue + 1] = G.P_CENTERS.p_ssnd_holographic
    end,

    apply = function(self, tag, context)
        if context.type == "new_blind_choice" then
            local lock = tag.ID
            G.CONTROLLER.locks[lock] = true
            tag:yep('+', G.C.SECONDARY_SET.Spectral, function()
                local booster = SMODS.create_card { key = "p_ssnd_buffoon_holographic", area = G.play }
                booster.T.x = G.play.T.x + G.play.T.w / 2 - G.CARD_W * 1.27 / 2
                booster.T.y = G.play.T.y + G.play.T.h / 2 - G.CARD_H * 1.27 / 2
                booster.T.w = G.CARD_W * 1.27
                booster.T.h = G.CARD_H * 1.27
                booster.cost = 0
                booster.from_tag = true
                G.FUNCS.use_card({ config = { ref_table = booster } })
                booster:start_materialize()
                G.CONTROLLER.locks[lock] = nil
                return true
            end)
            tag.triggered = true
            return true
        end
    end,
})


--[[
Changed Polychrome Tag
- Old: Next base edition shop Joker is free and becomes Polychrome
- New: Gives a free Polychrome Buffoon Pack (Choose 1 of up to 2 Polychrome Joker cards)
- Now only appears starting Ante 2
]]
SMODS.Tag:take_ownership("polychrome", {
    min_ante = 2,

    loc_vars = function(self, info_queue, tag)
        info_queue[#info_queue + 1] = G.P_CENTERS.p_ssnd_buffoon_polychrome
    end,

    apply = function(self, tag, context)
        if context.type == "new_blind_choice" then
            local lock = tag.ID
            G.CONTROLLER.locks[lock] = true
            tag:yep('+', G.C.SECONDARY_SET.Spectral, function()
                local booster = SMODS.create_card { key = "p_ssnd_buffoon_polychrome", area = G.play }
                booster.T.x = G.play.T.x + G.play.T.w / 2 - G.CARD_W * 1.27 / 2
                booster.T.y = G.play.T.y + G.play.T.h / 2 - G.CARD_H * 1.27 / 2
                booster.T.w = G.CARD_W * 1.27
                booster.T.h = G.CARD_H * 1.27
                booster.cost = 0
                booster.from_tag = true
                G.FUNCS.use_card({ config = { ref_table = booster } })
                booster:start_materialize()
                G.CONTROLLER.locks[lock] = nil
                return true
            end)
            tag.triggered = true
            return true
        end
    end,
})


--[[
Changed Negative Tag
- Old: Next base edition shop Joker is free and becomes Negative
- New: Gives a free Negative Buffoon Pack (Choose 1 of up to 2 Negative Joker cards)
- Now only appears starting Ante 2
]]
SMODS.Tag:take_ownership("negative", {
    min_ante = 2,

    loc_vars = function(self, info_queue, tag)
        info_queue[#info_queue + 1] = G.P_CENTERS.p_ssnd_buffoon_negative
    end,

    apply = function(self, tag, context)
        if context.type == "new_blind_choice" then
            local lock = tag.ID
            G.CONTROLLER.locks[lock] = true
            tag:yep('+', G.C.SECONDARY_SET.Spectral, function()
                local booster = SMODS.create_card { key = "p_ssnd_buffoon_negative", area = G.play }
                booster.T.x = G.play.T.x + G.play.T.w / 2 - G.CARD_W * 1.27 / 2
                booster.T.y = G.play.T.y + G.play.T.h / 2 - G.CARD_H * 1.27 / 2
                booster.T.w = G.CARD_W * 1.27
                booster.T.h = G.CARD_H * 1.27
                booster.cost = 0
                booster.from_tag = true
                G.FUNCS.use_card({ config = { ref_table = booster } })
                booster:start_materialize()
                G.CONTROLLER.locks[lock] = nil
                return true
            end)
            tag.triggered = true
            return true
        end
    end,
})