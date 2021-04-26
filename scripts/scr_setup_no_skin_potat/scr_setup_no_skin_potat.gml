function scr_setup_no_skin_potat() {
	var spr = sprite_add("surface_blank.png", 1, false, true, 0, 0);
	var surf;
	surf = surface_create(583, 888);
	surface_set_target(surf);
	draw_clear_alpha(c_black, 0);
	draw_sprite(s_potat, 0, 294, 198);
	draw_sprite(spr, 0, 0, 0);
	global.potatSprite = sprite_create_from_surface(surf, 0, 0, 583, 888, false, true, 292, 0);
	sprite_save(global.potatSprite, 0, "potatSprite.png");
	surface_reset_target();
	sprite_delete(spr);
	surface_free(surf);


}
