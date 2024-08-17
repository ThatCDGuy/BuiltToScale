if place_meeting(x,y,obj_player)
	{if dialogcount < array_length(dialog)-1
	dialogcount++
	if string(dialog[dialogcount]) = "woag"
	audio_play_sound(sfx_woag,10,0)}