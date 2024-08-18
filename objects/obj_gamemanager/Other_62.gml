if (ds_map_find_value(async_load, "id") == version)
{
    var status = ds_map_find_value(async_load, "status");
    if (status == 0)
    {
        // var path = ds_map_find_value(async_load, "result");
		room_goto(rm_startscreen)
    }
}