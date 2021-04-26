if(global.pausedMCQ){
	exit;
}
/// @description check Letters pressed
// You can write your code in this editor
if(!correct){ // can only select the correct answer once
	// check A pressed
	if point_in_rectangle(mouse_x, mouse_y, x + sprite_width*0.56098, y + sprite_height*0.11481, x + sprite_width*0.61765, y + sprite_height*0.18704)
	{
	    show_debug_message("MultChoice: 'A' Pressed")
		if(global.mcq_answers[global.mc] == 0){
			correct = true;
			grn_arrow = instance_create_depth(room_width - 400, room_height - 250, depth - 1, o_green_arrow);
        }
		else{
			red_x = instance_create_depth(mouse_x,mouse_y, depth - 1, o_redX);
		}
	}

	// Check B Pressed
	if point_in_rectangle(mouse_x, mouse_y, x + sprite_width*0.56098, y + sprite_height*0.34537, x + sprite_width*0.61765, y + sprite_height*0.42037)
	{
	    show_debug_message("MultChoice: 'B' Pressed")
		if(global.mcq_answers[global.mc] == 1){
			correct = true;
			grn_arrow = instance_create_depth(room_width - 400, room_height - 250, depth - 1, o_green_arrow);
		}
		else{
			red_x = instance_create_depth(mouse_x,mouse_y, depth - 1, o_redX);
		}
	}

	// check C pressed
	if point_in_rectangle(mouse_x, mouse_y, x + sprite_width*0.56098, y + sprite_height*0.58611, x + sprite_width*0.61765, y + sprite_height*0.65926)
	{
	    show_debug_message("MultChoice: 'C' Pressed")
		if(global.mcq_answers[global.mc] == 2){
			correct = true;
			grn_arrow = instance_create_depth(room_width - 400, room_height - 250, depth - 1, o_green_arrow);
		}
		else{
			red_x = instance_create_depth(mouse_x,mouse_y, depth - 1, o_redX);
		}
	}

	// check D pressed
	if point_in_rectangle(mouse_x, mouse_y, x + sprite_width*0.56098, y + sprite_height*0.82407, x + sprite_width*0.61765, y + sprite_height*0.89815)
	{
	    show_debug_message("MultChoice: 'D' Pressed")
		if(global.mcq_answers[global.mc] == 3){
			correct = true;
			grn_arrow = instance_create_depth(room_width - 400, room_height - 250, depth - 1, o_green_arrow);
		}
		else{
			red_x = instance_create_depth(mouse_x,mouse_y, depth - 1, o_redX);
		}	
	}
}
