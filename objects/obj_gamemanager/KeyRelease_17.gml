if !global.paused and room != rm_startscreen and room != rm_init and room != rm_endscreen
{global.paused = true
instance_deactivate_all(true)
cooldown = 5
audio_pause_all()}