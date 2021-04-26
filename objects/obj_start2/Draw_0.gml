draw_self();
if(instance_exists(o_confirm)){
	var color = draw_get_color();
	draw_set_color(c_black);
	draw_set_alpha(.7);
	draw_rectangle(0, 0, 1920, 1080, 0);
	draw_set_alpha(1);
	draw_set_color(color);
	draw_sprite(s_prompt, 0, 320, 176);
}