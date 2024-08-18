// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_normal(){
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
	
movespeed += carryspd

if weight > 100 or energy < 0
{sprite_index = spr_player_dead
movespeed = 0
hsp = 0
vsp = 0
if alarm[0] = -1
alarm[0] = 60
obj_camera.Shake_Camera(2,20)
dead = true
state = 1
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

if !global.movement_paused
{
energy -= 0.01666

hunger -= 0.025

carryspd -= 0.02
// weight -= 0.005

weight = clamp(weight,5,105)
energy = clamp(energy,-1,12)
hunger = clamp(hunger,0,10)
carryspd = clamp(carryspd,0,2)
}

if dead = false
move_and_collide(hsp,vsp,obj_wall,64)

/* if (place_meeting(x, y, obj_wall))
{
    move_outside_all(90, 4)
} */


if place_meeting(x+hsp,y,obj_speedblock) and carryspd > 0.3
{var b = instance_place(x+hsp,y,obj_speedblock)
instance_destroy(b)
}

if place_meeting(x,y+vsp,obj_speedblock) and carryspd > 0.3
{var b = instance_place(x,y+vsp,obj_speedblock)
instance_destroy(b)}

if place_meeting(x-2,y,obj_wall) or place_meeting(x+2,y,obj_wall)
{hsp = 0}

if place_meeting(x,y+2,obj_wall) or place_meeting(x,y-2,obj_wall)
{vsp = 0}

}

function scr_player_dead(){
	
}

function scr_player_sprint(){
if place_meeting(x+hsp,y,obj_speedblock)
{var b = instance_place(x+hsp,y,obj_speedblock)
instance_destroy(b)
}

if place_meeting(x,y+vsp,obj_speedblock)
{var b = instance_place(x,y+vsp,obj_speedblock)
instance_destroy(b)}

hsp = lerp(hsp,0,0.5)

if hsp < 5
state = 0

}