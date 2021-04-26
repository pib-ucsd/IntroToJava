if(global.paused){
	exit;
}
/// @description set selection vars

// set selected instance id
global.selectedID = id;

//remove previous box highlight
with(o_cal_demo2_whiteBox) image_index = 0;

//create new highlight box
image_index = 1;

// update the current whitebox index in the answer box
o_cal_demo2_ansBox.currentWhiteBoxId = myIndex;

// if selected white box is not within readable range
// move the screen to readable range
var readableRange = 150;
var moveMinY = readableRange;
var moveMaxY = room_height 
				- o_cal_demo2_ansBox.sprite_height
				- readableRange;

var delta = 0;
if (y < moveMinY)		delta = moveMinY - y;
else if (y > moveMaxY)	delta = moveMaxY - y;

with (o_cal_demo2_whiteBox) y += delta;
with(o_cal_challenge2)		y += delta;