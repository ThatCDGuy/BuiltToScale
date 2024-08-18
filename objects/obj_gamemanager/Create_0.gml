global.score = 0
global.roomname = 0
global.movement_paused = false
enum states
{
	normal,
	stunned
}

ini_open("savedata.ini")
ini_write_string("important stuff","game launched","yes it has")
ini_close()

