/* switch state
{
	case 0:
	scr_player_normal()
	break
	
	case 1:
	scr_player_dead()
	break
} */

key_left = keyboard_check(vk_left)
key_up = keyboard_check(vk_up)
key_down = keyboard_check(vk_down)
key_right = keyboard_check(vk_right)

if weight < 6
	movespeed = 1.5
else if weight < 20
	movespeed = 1.2
else if weight < 40
	movespeed = 1.0
else if weight < 60
	movespeed = 0.8
else if weight < 80
	movespeed = 0.6
else
	movespeed = 0.5

if weight > 100 or hp < 0
{sprite_index = spr_player_dead
movespeed = 0
hsp = 0
vsp = 0
if alarm[0] = -1
alarm[0] = 60
}

movespeedcap = weight*2
chonk = 1 + (weight-5)/190

if key_left
	hsp -= movespeed
	
if key_right
	hsp += movespeed
	
if key_up
	vsp -= movespeed
	
if key_down
	vsp += movespeed

hsp = clamp(hsp,-movespeedcap,movespeedcap)
vsp = clamp(vsp,-movespeedcap,movespeedcap)

hsp *= 0.9
vsp *= 0.9

image_xscale = chonk
image_yscale = chonk

hp -= 0.01666
weight -= 0.005

weight = clamp(weight,5,105)


move_and_collide(hsp,vsp,obj_wall,64)

if (place_meeting(x, y, obj_wall))
{
    move_outside_all(90, 4)
}
