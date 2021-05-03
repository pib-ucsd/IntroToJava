/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(
	sprite_index, image_index, x, y, 
	targetWidth / sprite_width,
	targetHeight / sprite_height, 
	0, c_white, 1
);

draw_set_color(c_black);
draw_set_font(font_chlgs3);
draw_text(x, y-40, string(index) + ": "+title);
