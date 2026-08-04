-- Call set_cost() for perishable cards
local old_set_perishable = Card.set_perishable

Card.set_perishable = function(self, _perishable) 
    old_set_perishable(self, _perishable)
    self:set_cost()
end