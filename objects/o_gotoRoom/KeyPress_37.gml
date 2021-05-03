/// @description Insert description here
// You can write your code in this editor

if (page != 0 && page > 1){
	lastPage = page-1;
	page = 0;
	hspeed = room_width / secToTransition / room_speed;
	alarm[0] = secToTransition * room_speed;
}