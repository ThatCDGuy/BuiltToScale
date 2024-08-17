// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_rectangle_ext(argument0,argument1,argument2,argument3,argument4,argument5){
//draw_rectangle_ext(x1,y1,x2,y2,color,width)
// by Immy42 on the GameMaker forums

x1 = argument0
y1 = argument1
x2 = argument2
y2 = argument3

color = argument4
width = argument5

draw_set_color(color)
draw_rectangle(x1,y1,x2,y2,true)

var i = 0
do
{
    i += 0.1
    draw_rectangle(x1-i,y1-i,x2+i,y2+i,true)
}
until(i = width)
}

function pulse(argument0,argument1){
///pulse(time, frequency)
//returns value in range 0-2
return (1+sin(2 * pi * argument1 * argument0));
}

function screenshake(_time, _magnitude, _fade)
{
   with (obj_screenshake)
   {
      shake = true;
      shake_time = _time;
      shake_magnitude = _magnitude;
      shake_fade = _fade;
   }
}