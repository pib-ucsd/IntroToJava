draw_self();
var yOff	= 0;
var alpha	= draw_get_alpha();
var color	= draw_get_color();
draw_set_alpha(1);
draw_set_color(c_white);

for(var i = 0; i < array_length_1d(img) && img[i] <= global.pageMax; i++){
	draw_text(xP, yP + yOff, topics[i]);
	yOff += 80;
}

draw_set_alpha(alpha);
draw_set_color(color);
