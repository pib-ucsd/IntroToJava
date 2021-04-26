/// scr_difficulty_speed()
function scr_difficulty_speed() {
	//

	var difficulty = o_checkbox.selectedDiff;
	// 0 = easy, 3 = hardest

	switch(difficulty){
		case 0:
			global.speedModifier = 1;
			break;
		case 1:
			global.speedModifier = clamp(global.speedModifier + random_range(-.1, .1), .8, 1.1);
			break;
		case 2:
			if(irandom(3)){
				global.speedModifier = clamp(global.speedModifier + random_range(-.05, .05), 1.3, 1.6);
			}
			else{
				global.speedModifier = clamp(global.speedModifier + random_range(-.05, .05), .6, .75);
			}
			break;
		case 3:
			if(irandom(2)){
				// lower modifier = slower
				global.speedModifier = clamp(global.speedModifier + random_range(-.05, .05), .6, .75);
			}
			else{
				global.speedModifier = clamp(global.speedModifier + random_range(-.05, .05), 1.4, 1.6);
			}
			break;
		default:
			global.speedModifier = 4; // evidently, something is going wrong
			break;
	}


}
