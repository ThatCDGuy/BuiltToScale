switch room
{
	case rm_init:
	case rm_test:
	global.roomname = "YOU AIN'T SUPPOSED TO SEE THIS, GET OUT!"
	break
	
	case rm_template:
	global.roomname = "THE DRAWING BOARD"
	break
	
	case rm_level1:
	global.roomname = "HUNGRY BLOB"
	break
	
	case rm_level2:
	global.roomname = "JUNK FOOD"
	break
}

instance_create_depth(0,0,0,obj_camera)
instance_create_depth(0,0,0,obj_screenshake)