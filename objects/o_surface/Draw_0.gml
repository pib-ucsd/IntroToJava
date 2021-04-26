//draw what draw mode is current
prevFont = draw_get_font();
prevColor = draw_get_color();
draw_set_color(c_white);
draw_set_font(font_not);
//draw_text_color(1110, 950, drawMode, c_white, c_white, c_white, c_white, 1);
draw_text(1110, 950, drawMode);
//draw_text(0, 0, string(mouse_x) + " " + string(mouse_y));
//draw_text(0, 80, string(color_get_red(color)) + " " + string(color_get_green(color)) + " " + string(color_get_blue(color)));

draw_set_font(font_colors);
draw_text(1286, 109, color_get_red(color));
draw_text(1286, 197, color_get_green(color));
draw_text(1286, 280, color_get_blue(color));

draw_text(size_x + 3, size_y + 5, size);

draw_set_font(prevFont);
draw_set_color(prevColor);

//create the surface if needed and draw
if(surface_exists(surface)){
	buffer_set_surface(buffer, surface, 0);
	if(mouse_check_button(mb_left)){//while mouse is clicked
		surface_set_target(surface);
		if(drawMode == "pencil"){
			draw_set_color(color);
			//draw a spot
			draw_circle(mouse_x - xOffset, mouse_y - yOffset, size, false);
			//connect the clicked spot to the mouse current pos
			draw_line_width(mouse_xprevious, mouse_yprevious, mouse_x - xOffset, mouse_y - yOffset, 2 * size);
			draw_set_color(prevColor);
		}
		else if(drawMode == "eraser"){
			gpu_set_blendmode(bm_subtract);
			draw_set_color(c_black);
			draw_set_alpha(1);
			//same as drawing, but in subtract mode
			draw_circle(mouse_x - xOffset, mouse_y - yOffset, size, false);	
			draw_line_width(mouse_xprevious, mouse_yprevious, mouse_x - xOffset, mouse_y - yOffset, 2 * size);
			gpu_set_blendmode(bm_normal);
			draw_set_color(prevColor);
		}
		buffer_get_surface(buffer, surface, 0);
		surface_reset_target();
	}
	draw_surface(surface, xOffset, yOffset);
	mouse_xprevious = mouse_x - xOffset;
	mouse_yprevious = mouse_y - yOffset;
}
else{
	surface = surface_create(surface_width, surface_height);
	surface_set_target(surface);
	buffer_set_surface(buffer, surface, 0);
	draw_clear_alpha(c_black, 0);
	surface_reset_target();//go back to application surface
}