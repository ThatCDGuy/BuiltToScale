other.weight += mass
other.hp += energy
instance_destroy()
particle = part_system_create(part_eaten)
part_system_position(particle,x,y)