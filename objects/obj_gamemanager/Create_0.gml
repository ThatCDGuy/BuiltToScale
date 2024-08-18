global.score = 0
basescore = 0
global.roomname = 0
global.movement_paused = false
global.localversion = 0.20
global.paused = false
cooldown = 0
enum states
{
	normal,
	stunned
}

ini_open("savedata.ini")
ini_write_string("important stuff","game launched","yes it has")
ini_close()

/* ini_open("version.ini")
ini_write_string("main","version number",global.localversion)
ini_close() */

version = http_get_file("https://raw.githubusercontent.com/ThatCDGuy/BuiltToScale/main/version.ini", "version.ini")
