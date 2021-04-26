var xP = mouse_x;
var yP = mouse_y;
if(point_in_rectangle(xP, yP, x + 75, y, x + sprite_width, y + 25)){
	o_surface.size += 1;
	flag = 1;
}
else if(point_in_rectangle(xP, yP, x + 75, y + 26, x + sprite_width, y + sprite_height)){
	if(o_surface.size > 0){
		o_surface.size -= 1;
	}
	flag = 2;
}