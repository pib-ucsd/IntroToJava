/// @description get answer boxes



// get all the whiteBoxes y and id
var whiteBoxYs = [];
whiteBoxIds = [];
numOfWhiteBoxs = instance_number(o_cal_demo2_whiteBox);
for (var i=0; i<numOfWhiteBoxs; i++){
	var thisId = instance_find(o_cal_demo2_whiteBox, i);
	whiteBoxYs[i] = thisId.y;
	whiteBoxIds[i] = thisId;
}

// bubble sort white boxes on y value
for (var i=0; i<numOfWhiteBoxs; i++)
	for (var j=0; j<numOfWhiteBoxs-i-1; j++)
		if (whiteBoxYs[j] > whiteBoxYs[j+1]){
			// switch the box ys
			var temp = whiteBoxYs[j];
			whiteBoxYs[j] = whiteBoxYs[j+1];
			whiteBoxYs[j+1] = temp;
			// switch the box ids
			temp = whiteBoxIds[j];
			whiteBoxIds[j] = whiteBoxIds[j+1];
			whiteBoxIds[j+1] = temp;
		}

// tell whiteBoxes their positions in this array
for (var i=0; i<numOfWhiteBoxs; i++)
	whiteBoxIds[i].myIndex = i;

// select the lowest y instance among the white boxs
currentWhiteBoxId = 0;
with(whiteBoxIds[currentWhiteBoxId])
	event_perform(ev_mouse, ev_left_press);
	
// but if its the first selection, we want kids to see the top of the code
var delta = 0 - o_cal_challenge2.y;
with (o_cal_demo2_whiteBox) y += delta;
with(o_cal_challenge2)		y += delta;