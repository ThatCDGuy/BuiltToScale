if (ds_map_find_value(async_load, "id") == version)
{
    var status = ds_map_find_value(async_load, "status");
    if (status == 0)
    {
        // var path = ds_map_find_value(async_load, "result");
		ini_open("version.ini")
	global.globalversion = ini_read_real("main","version number",0.0)
	ini_close()

	if global.globalversion > int64(global.localversion)
		{
		if show_question("Hey, the version of the game you're playing is outdated. Do you still want to play?") = true
			room_goto(rm_startscreen)
		else
			{url_open("https://thatcdguy.itch.io/gmtk-jam-24-game")
			game_end()}}
		else room_goto(rm_startscreen)
    }
}