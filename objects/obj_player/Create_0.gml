key_left = keyboard_check(vk_left)
key_up = keyboard_check(vk_up)
key_down = keyboard_check(vk_down)
key_right = keyboard_check(vk_right)
hsp = 0
vsp = 0
energy = 5
state = 0
weight = 5
chonk = weight/5
canmove = true
dead = false

carryspd = 0
hunger = 0
roomgoto = rm_level6

iframes = 0

global.movement_paused = false

show_debug_message(game_save_id)