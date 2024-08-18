switch room
{
	case rm_init:
	case rm_test:
	global.roomname = "YOU AIN'T SUPPOSED TO SEE THIS, GET OUT!"
	break
	
	case rm_template:
	global.roomname = "I MEAN IT, GET THE FUCK OUT!!"
	break
	
	case rm_level1:
	global.roomname = "THE BLOBBENING BEGINS"
	break
	
	case rm_level2:
	global.roomname = "A BALANCED BREAKFAST"
	break
	
	case rm_level3:
	global.roomname = "JUNK FOOD"
	break
	
	case rm_level4:
	global.roomname = "GOTTA GO FAST"
	break
	
	case rm_level5:
	global.roomname = "YOU ARE MY ENEMY"
	break
	
	case rm_level6:
	global.roomname = "DON'T GET TOO BIG"
	break
	
	case rm_level7:
	global.roomname = "BULKING UP"
	break
	
	case rm_notdoneyet:
	global.roomname = "LET ME COOK"
	break

}

instance_create_depth(0,0,0,obj_camera)
instance_create_depth(0,0,0,obj_screenshake)