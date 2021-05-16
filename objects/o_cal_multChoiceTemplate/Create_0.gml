x = (room_width - sprite_width) / 2;
image_speed = 0;
mc = global.mc; // so that instance level access to this value is faster
image_index = mc;
show_debug_message("mc: " + string(mc));
correct = false;
grn_arrow = "green";
red_x = "red";
xStart = x+sprite_width*0.56098;
xEnd = x+sprite_width*0.61765;
alarm[0] = 10;