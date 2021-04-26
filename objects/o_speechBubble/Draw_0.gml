draw_self();
var hAlign = draw_get_halign();
draw_set_halign(fa_middle);
var vAlign = draw_get_valign();
draw_set_halign(fa_middle);
if(instance_exists(obj_element)){
	draw_text_transformed_color(298, 6, obj_element.theKey, 4, 4, 0, c_navy, c_navy, c_navy, c_navy, 1);
}
draw_set_halign(hAlign);
draw_set_halign(vAlign);