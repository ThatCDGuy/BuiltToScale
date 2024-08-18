/* switch room
{
	case rm_test:
	case rm_init:
	music = mu_leveltheme_A
	break
}

if !audio_is_playing(music)
{
	audio_stop_all()
	audio_play_sound(music,100,true)
}