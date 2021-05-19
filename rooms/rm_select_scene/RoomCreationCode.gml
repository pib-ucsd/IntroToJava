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
	index: ind,
	scenenum: 1,
	dia: 0
};
	// 2nd scene
scenes[ind++] = {
	spInd: bg_grayBuilding,
	rmInd: rm_scene2_3,
	title: "Variables",
	index: ind,
	scenenum: 3,
	dia: 0
};
	// 3rd scene
scenes[ind++] = {
	spInd: bg_building,
	rmInd: rm_scene2_5,
	title: "Arithmetic",
	index: ind,
	scenenum: 5,
	dia: 0,
};
	// 4th scene
scenes[ind++] = {
	spInd: bg_building,
	rmInd: rm_scene2_6,
	title: "Arrays",
	index: ind,
	scenenum: 6, // 6 includes the 13 multiple choice, 7 doesn't. 7 => rm_65
	dia: 0,
	moreSprites: {
		sind: s_GQ,
		xx: .5, yy: .5, ww: .5, hh: .5
	}
};
	// 5th scene
scenes[ind++] = {
	spInd: bg_building,
	rmInd: rm_scene2_7,
	title: "More Variables",
	index: ind,
	scenenum: 8,
	dia: 0,
	moreSprites: {
		sind: s_loady,
		xx: -0.25, yy: 0.25, ww: .75, hh: .75
	}
};
	// 6th scene
scenes[ind++] = {
	spInd: bg_building,
	rmInd: rm_scene2_75,
	title: "Method Calls",
	index: ind,
	scenenum: 9,
	dia: 0,
	moreSprites: {
		sind: s_potat,
		xx: 0.2, yy: .3, ww: .35, hh: .7
	}
};
	// 7th scene
scenes[ind++] = {
	spInd: bg_underwaterGate,
	rmInd: rm_scene3_1,
	title: "Conditionals",
	index: ind,
	scenenum: 13,
	dia: 0,
};
	// 8th scene
scenes[ind++] = {
	spInd: bg_underwaterGateOpen,
	rmInd: rm_scene3_2,
	title: "While Loop",
	index: ind,
	moreSprites: {
		sind: s_GS,
		xx: .5, yy: 0, ww: .5, hh: 1
	},
	scenenum: 14,
};
	// 9th scene
scenes[ind++] = {
	spInd: bg_underwaterGateOpen,
	rmInd: rm_scene3_3,
	title: "For Loop",
	index: ind,
	moreSprites: {
		sind: spr_portal,
		xx: .5, yy: .5, ww: .5, hh: .5
	},
	scenenum: 17,
};
	// 10th scene
scenes[ind++] = {
	spInd: bg_candyland,
	rmInd: rm_scene4_1,
	title: "Classes",
	index: ind,
	moreSprites: {
		sind: spr_fire_elem
	},
	scenenum: 19,
};
	// 11th scene
scenes[ind++] = {
	spInd: bg_candyland,
	rmInd: rm_scene4_2,
	title: "Classes + Objects",
	index: ind,
	moreSprites: {
		sind: spr_water_elem
	},
	scenenum: 20,
};
	// 12th scene
scenes[ind++] = {
	spInd: bg_candyland,
	rmInd: rm_scene4_3,
	title: "Variable Scope",
	index: ind,
	moreSprites: {
		sind: spr_earth_elem
	},
	scenenum: 21,
};
	// 13th scene
scenes[ind++] = {
	spInd: bg_candyland,
	rmInd: rm_scene4_4,
	title: "Advanced Methods",
	index: ind,
	moreSprites: {
		sind: spr_air_elem
	},
	scenenum: 22,
};
	// 14th scene
scenes[ind++] = {
	spInd: bg_dino,
	rmInd: rm_scene4_5,
	title: "Fun Dialogue",
	index: ind,
	scenenum: 23,
};
	// 15th scene
scenes[ind++] = {
	spInd: bg_arena,
	rmInd: rm_scene5_15,
	title: "Minigame",
	index: ind,
	scenenum: 25,
	
};



// assuming there is a grid centered in the room
// specify the padding left, right, top, bottom
// and the horizontal and vertical distance between grids
// then the scenes themselves will fill up the gaps
var gridStartX = 150, gridEndX = 150,
	gridStartY = 100, gridEndY = 200,
	gridBoxHorSep = 100, gridBoxVerSep = 100;

// the code below generates the o_gotoRoom's at the correct locations

var	gridBoxWidthPlusSep = (room_width - gridStartX - gridEndX + gridBoxHorSep)/numCols,
	gridBoxHeightPlusSep = (room_height-gridStartY-gridEndY+gridBoxVerSep)/numRows;

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
		
		if (variable_struct_exists(scenes[i], "scenenum"))
			scenenum = scenes[i].scenenum;
		if (variable_struct_exists(scenes[i], "dia"))
			dia = scenes[i].dia;
		else dia = 0;
		if (variable_struct_exists(scenes[i], "moreSprites"))
			moreSprites = scenes[i].moreSprites;
	}
	
	curX += gridBoxWidthPlusSep;
}
