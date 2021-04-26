/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_font(font_chlgs3);
draw_set_color(c_silver);
draw_text_ext_transformed(x+30,y+20,prompt,-1,(sprite_width-60),1,1,0);
var textScale = .815;

if(print) {
	var heightMultiplier = 1;
	
	var tempCounter = 1;
	while(!ds_queue_empty(global.consoleQueue)){
		consoleArr[tempCounter++] = ds_queue_dequeue(global.consoleQueue);
	}
	
	for(var i = array_length_1d(consoleArr) - 1; i + 1 > 0; i--){
		if(i == array_length_1d(consoleArr) - 1){
			draw_text_transformed(x + 30, y + sprite_height - (20 + string_height(prompt)) * heightMultiplier++ * textScale, consoleArr[array_length_1d(consoleArr) - heightMultiplier], textScale, textScale, 0);
		}
		else if(i == array_length_1d(consoleArr) - 2){
			draw_text_transformed(x + 30, y + sprite_height - (11 + string_height(prompt)) * heightMultiplier++ * textScale, consoleArr[array_length_1d(consoleArr) - heightMultiplier], textScale, textScale, 0);
		}
		else{
			draw_text_transformed(x + 30, y + sprite_height - 9 - (3 + string_height(prompt)) * heightMultiplier++ * textScale, consoleArr[array_length_1d(consoleArr) - heightMultiplier], textScale, textScale, 0);
		}
	}
}