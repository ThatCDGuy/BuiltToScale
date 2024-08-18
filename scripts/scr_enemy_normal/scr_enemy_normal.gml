// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_normal(){

mp_potential_settings(45, 5, 5, 0)

/* if target != noone
{dir = point_direction(x,y,target.x,target.y)	

hsp = lengthdir_x(3,dir)
vsp = lengthdir_y(3,dir)}

x += hsp
y += vsp */

if distance_to_object(obj_player) < 200
target = obj_player

if target != noone
{
path = path_add()
mp_potential_path_object(path, target.x, target.y, spd, 4, obj_wall)
path_start(path, spd, 0, 0)
}
/* else
{target = noone
hsp *= 0.9
vsp *= 0.9} */

scr_collide()

if distance_to_object(obj_player) < 50
path_speed = spd/1
else if distance_to_object(obj_player) < 100
path_speed = spd/1
else if distance_to_object(obj_player) < 150
path_speed = spd/1
else
path_speed = spd
}