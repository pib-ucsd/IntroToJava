/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_font(font_TNR);
draw_set_color(c_silver);
draw_text_ext_transformed(x+50,y+50,prompt,-1, sprite_width*2.25,0.4,0.4,0);
var textScale = .815 * 0.4; //0.4 from font change

if(print) {
	var heightMultiplier = 1;
	
	var tempCounter = 1;
	while(!ds_queue_empty(global.consoleQueue)){
		consoleArr[tempCounter] = ds_queue_dequeue(global.consoleQueue);
	}
	
	for(var i = array_length(consoleArr) - 1; i + 1 > 0; i--){
		if(i == array_length(consoleArr) - 1){
			draw_text_transformed(x + 30, y + sprite_height - (30 + string_height(prompt)) * heightMultiplier * textScale, consoleArr[array_length(consoleArr) - heightMultiplier++], textScale, textScale, 0);
		}
		else if(i == array_length(consoleArr) - 2){
			draw_text_transformed(x + 30, y + sprite_height - (17 + string_height(prompt)) * heightMultiplier * textScale, consoleArr[array_length(consoleArr) - heightMultiplier++], textScale, textScale, 0);
		}
		else{
			draw_text_transformed(x + 30, y + sprite_height - 9 - (5 + string_height(prompt)) * heightMultiplier * textScale, consoleArr[array_length(consoleArr) - heightMultiplier++], textScale, textScale, 0);
		}
	}
}