other.weight += mass
other.hp += energy
instance_destroy()
global.particle = part_system_create(part_eaten)
part_system_position(global.particle,x,y)