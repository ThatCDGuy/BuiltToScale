draw_sprite(spr_staticscreen,-1,0,0)
draw_set_font(fnt_big)
draw_set_color(c_black)
draw_text(10,10,"HUNGRY BLOB")
draw_set_font(fnt_stillprettybig)
draw_text(10,65,"MADE FOR THE GMTK GAME JAM 2024")
draw_text(10,115,"USE THE ARROW KEYS TO MOVE YOUR BLOB.")
draw_text(10,136,"THE AIM OF THE GAME IS TO REACH THE GOAL.")
draw_text(10,157,"THERE ARE FOODS SCATTERED AROUND EACH LEVEL.")
draw_text(10,178,"YOU HAVE TO EAT SO YOUR ENERGY BAR (the blue one) DOESN'T RUN OUT.")
draw_text(10,199,"BUT BE CAREFUL! EVERY TIME YOU EAT, YOU GROW. (you can monitor this with the blue bar)")
draw_text(10,220,"AND IF YOU GROW TOO BIG, IT'S GAME OVER FOR YOU...")
if (os_browser == browser_not_a_browser)
draw_text(10,320,"PRESS SPACE OR CLICK TO START")
else
draw_text(10,320,"CLICK TO START")
draw_text(10,420,"USES THE MultiObjectTrackingCamera SCRIPT ON THE GAMEMAKER MARKETPLACE")
draw_text(10,441,"MADE BY ALBERTROS")
draw_set_font(fnt_normal)
draw_text(10,510,"VERSION " + string(global.localversion))