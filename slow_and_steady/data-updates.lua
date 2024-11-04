local entity, name


local function multiply_property(property, modificator)
	if entity[property] == 0 then return end
	entity[property] = entity[property] * modificator
end


name = "locomotive"
entity = data.raw[name][name]
if entity then
	multiply_property("weight", 1)
	multiply_property("max_health", 2.0)
	multiply_property("braking_force", 0.04)
	multiply_property("max_speed", 0.30)
	entity.max_power = "150kW"
	if entity.energy_source.effectivity ~= 0 then
		entity.energy_source.effectivity = entity.energy_source.effectivity * 2
	end
	multiply_property("friction_force", 0.1) -- previously 8
end

name = "cargo-wagon"
entity = data.raw[name][name]
if entity then
	multiply_property("weight", 4)
	multiply_property("max_health", 2.0)
	multiply_property("braking_force", 0.04)
	multiply_property("friction_force", 0.1) -- at 5 before
	multiply_property("inventory_size", 4)
end

name = "fluid-wagon"
entity = data.raw[name][name]
if entity then
	multiply_property("weight", 4)
	multiply_property("max_health", 5.2)
	multiply_property("braking_force", 0.04)
	multiply_property("friction_force", 0.1) -- at 5 before
	multiply_property("capacity", 4)
end
