switch state
{
	case 0:
	scr_player_normal()
	break
	
	case 1:
	scr_player_dead()
	break
	
	case 2:
	scr_player_sprint()
	break
}

if place_meeting(x,y,obj_wall)
{
	var r = 0
	repeat(360)
	{
		var i = 0
		repeat(10)
		{
			x += lengthdir_x(-i,r)
			y += lengthdir_y(-i,r)
			if !place_meeting(x,y,obj_wall)
				{break}
			else
				x += lengthdir_x(i,r)
				y += lengthdir_y(i,r)
		}
	}
}

if place_meeting(x,y,obj_wall)
{sprite_index = spr_player_dead
movespeed = 0
hsp = 0
vsp = 0
if alarm[0] = -1
alarm[0] = 60
obj_camera.Shake_Camera(2,20)
dead = true
state = 1
var m = choose(sfx_hurt1,sfx_hurt2,sfx_hurt3,sfx_hurt4)
if !audio_is_playing(m)
audio_play_sound(m,1000,0,1,0,random_range(1,1.3))}

iframes--

if iframes > 0
image_alpha = 0.5 + (60-iframes)/120
else
image_alpha = 1

