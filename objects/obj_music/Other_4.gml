switch room
{
	case rm_test:
	case rm_level1:
		if !audio_is_playing(mu_leveltheme_A)
		{audio_stop_all()
		audio_play_sound(mu_leveltheme_A,100,true)}
	break
}
