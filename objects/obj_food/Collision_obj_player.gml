other.weight += mass
other.energy += energy - (other.hunger / 5)
other.hunger += hunger
global.score += score_add
instance_destroy()
particle = part_system_create(part_eaten)
part_system_position(particle,x,y)
if object_index != obj_cucumber
audio_play_sound(choose(sfx_eating1,sfx_eating2,sfx_eating3,sfx_eating4),1000,0,0.7,0,random_range(1,1.3))
else
audio_play_sound(sfx_eating5,1000,0,0.7,0,random_range(1,1.3))
obj_camera.zoom_factor = 0.6
obj_camera.alarm[0] = 30