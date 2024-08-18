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

iframes--

if iframes > 0
image_alpha = 0.5 + (60-iframes)/120
else
image_alpha = 1

