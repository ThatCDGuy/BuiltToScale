key_left = keyboard_check(vk_left)
key_up = keyboard_check(vk_up)
key_down = keyboard_check(vk_down)
key_right = keyboard_check(vk_right)

movespeed = weight/2.5
movespeedcap = weight*2
chonk = weight/5

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

move_and_collide(hsp,vsp,obj_wall,64)