/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

other.carryspd += 1
/* other.state = 2
other.hsp *= 10
other.vsp *= 10 */

ini_open("savedata.ini")
ini_write_string("cucumbers",room_get_name(room),"found")
ini_close()