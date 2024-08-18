if instance_exists(obj_player)
{
draw_set_alpha(0.8)

draw_set_font(fnt_big)
draw_rectangle_ext(10,10,string_width(global.roomname) + 15,45,c_black,2)
draw_set_color(c_white)
draw_rectangle(10,10,string_width(global.roomname) + 15,45, false)
draw_set_color(c_black)
draw_text(15,15,global.roomname)

var weight = obj_player.weight
var a = make_color_rgb(145,219,105)
var b = make_color_rgb(232,59,59)
draw_healthbar(10,60,210,80,weight,c_ltgrey,a,a,0,true,false)
draw_rectangle_ext(10,60,210,80,c_black,2)
draw_text(220,60,weight)

var energy = obj_player.energy * 10
var energy_exact = clamp(obj_player.energy,0,12)
var a = make_color_rgb(77,155,230)
draw_healthbar(10,95,210,115,energy,c_ltgrey,a,a,0,true,false)
draw_rectangle_ext(10,95,210,115,c_black,2)
draw_text(220,95,energy_exact)

var hunger = obj_player.hunger * 10
var hunger_exact = clamp(obj_player.hunger,0,12)
var a = make_color_rgb(234,79,54)
draw_healthbar(10,130,210,150,hunger,c_ltgrey,a,a,0,true,false)
draw_rectangle_ext(10,130,210,150,c_black,2)
draw_text(220,130,hunger_exact)

var carryspd = string(obj_player.carryspd)

if carryspd > -1
draw_text(10,150,"SPEED BOOST: " + carryspd)

draw_rectangle_ext(750,10,950,45,c_black,2)
draw_set_color(c_white)
draw_rectangle(750,10,950,45,false)
draw_set_color(c_black)
draw_text(760,15,"SCORE: " + string(global.score))

draw_set_alpha(1)
}