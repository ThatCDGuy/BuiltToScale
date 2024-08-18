global.score = 0
basescore = 0
global.roomname = 0
global.movement_paused = false
global.localversion = 0.1
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

// http_get_file(dl.dropbox.com, "\download\game.ini")