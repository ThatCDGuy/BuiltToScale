// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_stunned(){
stuntime--

path_speed *= 0.9

if stuntime = 0
{state = states.normal
path_speed = spd}
}