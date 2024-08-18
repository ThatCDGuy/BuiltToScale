if iframes < -1 and other.threshold > weight and carryspd = 0
{
	iframes = 60
	energy -= 1
	audio_play_sound(choose(sfx_hurt1,sfx_hurt2,sfx_hurt3,sfx_hurt4),1000,0,1,0,random_range(1,1.3))
}

if weight > other.threshold or carryspd > 0.2
	instance_destroy(other)