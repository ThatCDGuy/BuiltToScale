// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function pulse(time,frequency){
///pulse(time, frequency)
//returns value in range 0-2
return (1+sin(2 * pi * frequency * time))
}