SMODS.Enhancement {
    key = "brick",
    atlas = "brick",
    pos = { x = 0, y = 0 },
    loc_txt = {
        name = "Brick",
        text = {
            "No rank or suit",
            "Never scores",
        },
    },
    config = {},
    replace_base_card = true,
    no_rank = true,
    no_suit = true,
    never_scores = true,
    weight = 0,

    in_pool = function(self, args)
        return false
    end
}