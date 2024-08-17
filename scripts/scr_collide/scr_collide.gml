// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_collide(){
if place_meeting(x+hsp,y,obj_wall)
{x -= hsp 
hsp = 0
//x = xprevious
}

if place_meeting(x,y+vsp,obj_wall)
{y -= vsp
vsp = 0
//y = yprevious
}

}