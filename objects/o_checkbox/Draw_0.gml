draw_self();
var theColor = draw_get_color();
var textAlignment = draw_get_halign();
draw_set_color(c_white);
draw_set_halign(fa_right);
draw_text_transformed(x - string_length(theDiff) + 5 - sprite_width / 2, y + sprite_height / 2 - 10, theDiff, 1.7, 1.7, 0);
draw_set_color(theColor);
draw_set_halign(textAlignment);