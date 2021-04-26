/// @description Insert description here
// You can write your code in this editor

alarm[4] = 100;

//set up the 0, 0 position
xOrigin		= 0;
yOrigin		= 0;
xOffset		= x;
yOffset		= y;
scale		= 0;
t			= 0; // for for x, y calculation
posOffset	= 100;

fireworksX	= 960;
fireworksY	= 540;

rangeXMin	= 100;
rangeXMax	= 1880;
rangeYMin	= 10;
rangeYMax	= 700;

part_system=part_system_create();
var theSprite = s_whiteBlock;

part1=part_type_create(); // normal
part_type_sprite(part1, theSprite, false, false, true);
part_type_size(part1, .3, .9, .01, .03);
part_type_life(part1, game_get_speed(gamespeed_fps), game_get_speed(gamespeed_fps)*1.5);
part_type_speed(part1, 1, 7, 0, 0);
part_type_direction(part1, -60, 240, 0, 0);
part_type_orientation(part1, 0, 0, 0, 0, true);
part_type_color_rgb(part1, 0, 255, 0, 255 ,0, 255);
part_type_gravity(part1, 0.1, 270);
part_type_alpha2(part1, 1, .2);

part2=part_type_create(); // longer
part_type_sprite(part2, theSprite, false, false, true);
part_type_size(part2, .3, .9, .01, .03);
part_type_life(part2, game_get_speed(gamespeed_fps)*1.2, game_get_speed(gamespeed_fps)*1.9);
part_type_speed(part2, 1, 8, 0, 0);
part_type_direction(part2, 0, 360, 0, 0);
part_type_orientation(part2, 0, 0, 0, 0, true);
part_type_color_rgb(part2, 0, 255, 0, 255 ,0, 255);
part_type_gravity(part2, 0.1, 270);
part_type_alpha3(part2, 1, .95, .4);

part3=part_type_create(); // shorter
part_type_sprite(part3, theSprite, false, false, true);
part_type_size(part3, .3, .9, -.015, .03);
part_type_life(part3, game_get_speed(gamespeed_fps)/2, game_get_speed(gamespeed_fps)*2/3);
part_type_speed(part3, 2, 4, -.02, 0);
part_type_direction(part3, 0, 360, 0, .01);
part_type_orientation(part3, 0, 0, 0, 0, true);
part_type_color_rgb(part3, 0, 255, 0, 255 ,0, 255);
part_type_gravity(part3, 0.001, 270);
part_type_alpha3(part3, 1, .9, 0.2);

alarm[0] = 80;
alarm[1] = 130;
alarm[2] = 50;