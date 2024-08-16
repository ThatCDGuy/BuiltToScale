key_left = keyboard_check(vk_left)
key_up = keyboard_check(vk_up)
key_down = keyboard_check(vk_down)
key_right = keyboard_check(vk_right)

if weight < 10
	movespeed = 2
else if weight < 20
	movespeed = 1.8
else if weight < 40
	movespeed = 1.6
else if weight < 60
	movespeed = 1.2
else if weight < 80
	movespeed = 0.8
else
	movespeed = 0.5

if weight < 10
sprite_index = spr_player_skinny
else if weight < 30
sprite_index = spr_player_healthy
else if weight < 60
sprite_index = spr_player_chubby
else if weight < 80
sprite_index = spr_player_fat
else
sprite_index = spr_player_veryfat

if weight > 100
{sprite_index = spr_player_morbidlyobese
movespeed = 0
hsp = 0
vsp = 0
if alarm[0] = -1
alarm[0] = 60}

movespeedcap = weight*2
chonk = 1 + weight/190

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

chonk -= hsp/10
chonk -= vsp/10

chonk = clamp(chonk,5,100)

if chonk = 100
game_restart()

move_and_collide(hsp,vsp,obj_wall,64)