////if color palette clicked when either dropper or pen, change colors
//if(drawMode == "pencil" || drawMode == "dropper"){
//	var xPos = device_mouse_raw_x(0);
//	var yPos = device_mouse_raw_y(0);
//	show_debug_message("x: " + string(xPos) + " y: " + string(yPos));
//	if(point_in_rectangle(xPos, yPos, 642, 354, 885, 492)){
//		if(point_in_rectangle(xPos, yPos, black_x1, black_y1, black_x2, black_y2)){
//			color = make_color_rgb(0, 0, 0);
//		}
//		else if(point_in_rectangle(xPos, yPos, red_x1, red_y1, red_x2, red_y2)){
//			color = make_color_rgb(255, 0, 0);
//		}
//		else if(point_in_rectangle(xPos, yPos, blue_x1, blue_y1, blue_x2, blue_y2)){
//			color = make_color_rgb(0, 0, 255);
//		}
//		else if(point_in_rectangle(xPos, yPos, white_x1, white_y1, white_x2, white_y2)){
//			color = make_color_rgb(255, 255, 255);
//		}
//		else if(point_in_rectangle(xPos, yPos, green_x1, green_y1, green_x2, green_y2)){
//			color = make_color_rgb(0, 255, 0);
//		}
//		else if(point_in_rectangle(xPos, yPos, yellow_x1, yellow_y1, yellow_x2, yellow_y2)){
//			color = make_color_rgb(255, 255, 0);
//		}
//	}
//}