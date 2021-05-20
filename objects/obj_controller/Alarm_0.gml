if(global.paused){
	alarm[0] = 60;
	exit;
}
var element = instance_create_layer(x, y, "Elements", obj_element);
if(selectedDiff == 0) {
	element.sprite_index = choose(spr_water_elem1, spr_fire_elem1, spr_earth_elem1, spr_air_elem1);
}
else {
	element.sprite_index = choose(spr_water_elem, spr_fire_elem, spr_earth_elem, spr_air_elem);
}

with (element) {
	//move_towards_point(-150, y, 5);
}

scr_difficulty_speed();

//global.speedModifier = 1.5;

alarm[0] = room_speed * random_range(1/global.speedModifier, 1.5/global.speedModifier);