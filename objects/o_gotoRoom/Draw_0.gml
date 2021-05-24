/// @description Insert description here
// You can write your code in this editor

if (outsideRoom) exit

// draw the background image
if (rmInd != undefined){
	draw_sprite_ext(
		sprite_index, 0, x, y, 
		image_xscale,
		image_yscale, 
		0, c_white, 1
	);
}

// draw the optional character
if (moreSprites != undefined){
	var xx = get(moreSprites.xx, 0.25)*targetWidth,
		yy = get(moreSprites.yy, 0.25)*targetHeight,
		ww = get(moreSprites.ww, 0.5)*targetWidth,
		hh = get(moreSprites.hh, 0.5)*targetHeight,
		sind = moreSprites.sind,
		sw = sprite_get_width(sind),
		sh = sprite_get_height(sind);

	draw_sprite_ext(
		sind, 0, x+xx, y+yy, 
		ww/sw, hh/sh, 0, c_white, 1
	);
}

// draw the title text
if (title != undefined){
	draw_set_color(c_black);
	draw_set_font(font_chlgs3);
	draw_text(x, y-40, string(index) + ": "+title);
}