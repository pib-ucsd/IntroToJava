if(!menu_open){
	draw_self();
	exit;
}

// save the alpha and color
var alpha = draw_get_alpha();
var color = draw_get_color();

// dark background
draw_set_alpha(.6);
draw_set_color(c_black);
draw_rectangle(0, 0, room_width, room_height, false);

var o = 16;
// menu overlay
draw_set_alpha(1);
draw_set_color(make_color_rgb(44, 48, 65));
draw_roundrect_ext(320, 128, room_width - 320, room_height - 128, 64, 64, false);
draw_set_color(make_color_rgb(109, 171, 220));
draw_roundrect_ext(320 + o, 128 + o, room_width - 320 - o, room_height - 128 - o, 64, 64, false);
//draw_roundrect_color_ext(304, 112, room_width - 304, room_height - 112, 16, 16, c_gray, c_purple, false);
//draw_roundrect_color_ext(320, 128, room_width - 320, room_height - 128, 64, 64, make_color_rgb(44, 48, 65), make_color_rgb(44, 48, 65), false);
//draw_roundrect_color_ext(320 + o, 128 + o, room_width - 320 - o, room_height - 128 - o, 64, 64, c_gray, c_purple, false);


// x to close the menu


// reset the alpha and color
draw_set_alpha(alpha);
draw_set_color(color);
draw_self();