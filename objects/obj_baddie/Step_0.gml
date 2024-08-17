switch state
{

case states.normal:
scr_enemy_normal()
break

case states.stunned:
scr_enemy_stunned()
break

}

if stuntime > 0
image_alpha = 0.5 + (60-stuntime)/120
else
image_alpha = 1