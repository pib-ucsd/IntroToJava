/// @description Health Bar

// enemy power level
draw_set_font(fnt_health); 
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_text_transformed(x - string_width("Dino Powah") - 10, y + sprite_height / 2, "Dino Powah", 1.5, 1.5, 0);

// Draw health bar
var percent = (health / max_health) * 100;
if (health <= max_health) {
	draw_healthbar(x, y, x+250, y+50, percent, c_black, c_red, c_lime, 0, true, true)
}
