if(mouse_check_button(mb_left) && flag){
	x = clamp(mouse_x, 1140, 1357);
	colorVal = 255 - (((1357 - x) / (1357 - 1140)) * 255);
}
else {
	if(id == global.sliderBars[0]){
		x = 1140 + color_get_red(o_surface.color) / 255 * (1357 - 1140);
		//x = 1357 - ((255 - color_get_red(o_surface.color)) / 255) * (1357 - 1140);
	}
	else if(id == global.sliderBars[1]){
		x = 1140 + color_get_green(o_surface.color) / 255 * (1357 - 1140);
		//x = 1357 - ((255 - color_get_green(o_surface.color)) / 255) * (1357 - 1140);
	}
	else if(id == global.sliderBars[2]){
		x = 1140 + color_get_blue(o_surface.color) / 255 * (1357 - 1140);
		//x = 1357 - ((255 - color_get_blue(o_surface.color)) / 255) * (1357 - 1140);
	}
	colorVal = 255 - (((1357 - x) / (1357 - 1140)) * 255);
}