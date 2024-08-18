other.weight += mass
other.energy += energy - (other.hunger / 5)
other.hunger += hunger
global.score += score_add
instance_destroy()
particle = part_system_create(part_eaten)
part_system_position(particle,x,y)