switch room
{
	case rm_test:
	case rm_level1:
		if !audio_is_playing(hungry_blob_A_theme)
		{audio_stop_all()
		audio_play_sound(hungry_blob_A_theme,100,true)}
	break
}
