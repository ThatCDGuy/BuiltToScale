other.weight += mass
other.energy += energy - (other.hunger / 5)
other.hunger += hunger
instance_destroy()
global.particle = part_system_create(part_eaten)
part_system_position(global.particle,x,y)