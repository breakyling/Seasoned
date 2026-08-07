-- Call set_cost() for Perishable cards
local old_set_perishable = Card.set_perishable

Card.set_perishable = function(self, _perishable)
    old_set_perishable(self, _perishable)
    self:set_cost()
end


-- Halve costs for Perishable cards
local old_set_cost_value = Card.set_cost_value

Card.set_cost_value = function(self)
    old_set_cost_value(self)
    if self.ability.perishable and not self.ability.rental then
        self.cost = self.cost / 2
    end
end