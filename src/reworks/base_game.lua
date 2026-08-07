-- Change starting params
local old_get_starting_params = old_get_starting_params

get_starting_params = function()
    local starting_params = old_get_starting_params()
    starting_params.discards = 4
    starting_params.hands = 3
    starting_params.blind_reward_bonus = 0
    return starting_params
end


-- Add blind_reward_bonus from deck to params
local old_apply_to_run = Back.apply_to_run

Back.apply_to_run = function(self)
    old_apply_to_run(self)
    if self.effect.config.blind_reward_bonus then
        G.GAME.starting_params.blind_reward_bonus = G.GAME.starting_params.blind_reward_bonus + self.effect.config.blind_reward_bonus
    end
end