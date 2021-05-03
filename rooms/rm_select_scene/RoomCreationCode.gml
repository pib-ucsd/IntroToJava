/// grid of scene boxes!
var totalScenes = 15;


// how to display the grids on this page
var numRows = 2;
var numCols = 3;


// making the scenes
var ind = 0;
var scenes = [];

	// 1st scene
scenes[ind++] = {
	spInd: bg_bedroom,
	rmInd: rm_scene2_1,
	title: "Hello World!",
	index: ind
};
	// 2nd scene
scenes[ind++] = {
	spInd: bg_grayBuilding,
	rmInd: rm_scene2_2,
	title: "Variables",
	index: ind
};
	// 3rd scene
scenes[ind++] = {
	spInd: bg_building,
	rmInd: rm_scene2_5,
	title: "Arithmetic",
	index: ind
};
	// 4th scene
scenes[ind++] = {
	spInd: bg_building,
	rmInd: rm_scene2_6,
	title: "Arrays",
	index: ind
};
	// 5th scene
scenes[ind++] = {
	spInd: bg_building,
	rmInd: rm_scene2_7,
	title: "More Variables",
	index: ind
};
	// 6th scene
scenes[ind++] = {
	spInd: bg_building,
	rmInd: rm_scene2_8,
	title: "Method Calls",
	index: ind
};
	// 7th scene
scenes[ind++] = {
	spInd: bg_underwaterGate,
	rmInd: rm_scene2_10,
	title: "Conditionals",
	index: ind
};
	// 8th scene
scenes[ind++] = {
	spInd: bg_underwaterGateOpen,
	rmInd: rm_scene3_25,
	title: "While Loop",
	index: ind
};
	// 9th scene
scenes[ind++] = {
	spInd: bg_underwaterGateOpen,
	rmInd: rm_scene3_3,
	title: "For Loop",
	index: ind
};
	// 10th scene
scenes[ind++] = {
	spInd: bg_candyland,
	rmInd: rm_scene3_4,
	title: "Classes",
	index: ind
};
	// 11th scene
scenes[ind++] = {
	spInd: bg_candyland,
	rmInd: rm_scene4_2,
	title: "Classes + Objects",
	index: ind
};
	// 12th scene
scenes[ind++] = {
	spInd: bg_candyland,
	rmInd: rm_scene4_3,
	title: "Variable Scope",
	index: ind
};
	// 13th scene
scenes[ind++] = {
	spInd: bg_candyland,
	rmInd: rm_scene4_4,
	title: "Advanced Methods",
	index: ind
};
	// 14th scene
scenes[ind++] = {
	spInd: bg_dino,
	rmInd: rm_scene4_5,
	title: "Fun Dialogue",
	index: ind
};
	// 15th scene
scenes[ind++] = {
	spInd: bg_arena,
	rmInd: rm_game,
	title: "Minigame",
	index: ind
};



// assuming there is a grid centered in the room
// specify the padding left, right, top, bottom
// and the horizontal and vertical distance between grids
// then the scenes themselves will fill up the gaps
var gridStartX = 100,
	gridStartY = 100,
	gridBoxHorSep = 100,
	gridBoxVerSep = 100;
	




// the code below generates the o_gotoRoom's at the correct locations

var	gridBoxWidthPlusSep = (room_width - 2*gridStartX + gridBoxHorSep)/numCols,
	gridBoxHeightPlusSep = (room_height-2*gridStartY+gridBoxVerSep)/numRows;

var curX, curY;
for (var i=0; i<totalScenes; i++){
	
	if (i % numCols == 0){
		curX = floor(i/(numRows*numCols))*room_width + gridStartX;
		curY = floor((i%(numRows*numCols))/numCols)*gridBoxHeightPlusSep + gridStartY;
	}
	
	with(instance_create_depth(curX, curY, 0, o_gotoRoom)){
		sprite_index = scenes[i].spInd;
		rmInd = scenes[i].rmInd;
		title = scenes[i].title;
		index = scenes[i].index;
		targetWidth = gridBoxWidthPlusSep - gridBoxHorSep;
		targetHeight = gridBoxHeightPlusSep - gridBoxVerSep;
		pageMax = ceil(totalScenes/(numRows*numCols));
	}
	
	curX += gridBoxWidthPlusSep;
}
