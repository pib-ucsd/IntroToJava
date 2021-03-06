/// grid of scene boxes!
var totalScenes = 18;


// how to display the grids on this page
var numRows = 2;
var numCols = 3;


// making the scenes
var ind = 0;
var scenes = [];

	// 1st scene
scenes[ind++] = {
	spInd: bg_bedroomSmall,
	rmInd: rm_opening_dialogue,
	title: "Hello World!",
	index: ind,
	scenenum: 0,
};
	// 2nd scene
scenes[ind++] = {
	spInd: bg_grayBuildingSmall,
	rmInd: rm_scene2_3,
	title: "Variables",
	index: ind,
	scenenum: 3,
};
	// 3rd scene
scenes[ind++] = {
	spInd: bg_buildingSmall,
	rmInd: rm_scene2_5,
	title: "Arithmetic",
	index: ind,
	scenenum: 5,
	mc: 1
};
	// 4th scene
scenes[ind++] = {
	spInd: bg_buildingSmall,
	rmInd: rm_scene2_6,
	title: "Arrays",
	index: ind,
	scenenum: 6, // 6 includes the 13 multiple choice, 7 doesn't. 7 => rm_65
	moreSprites: {
		sind: s_GQ,
		xx: .5, yy: .5, ww: .5, hh: .5
	},
	mc: 1
};
	// 5th scene
scenes[ind++] = {
	spInd: bg_buildingSmall,
	rmInd: rm_scene2_7,
	title: "More Variables",
	index: ind,
	scenenum: 8,
	moreSprites: {
		sind: s_loady,
		xx: -0.25, yy: 0.25, ww: .75, hh: .75
	},
	mc: 2
};
	// 6th scene
scenes[ind++] = {
	spInd: bg_buildingSmall,
	rmInd: rm_scene2_75,
	title: "Method Calls",
	index: ind,
	scenenum: 10,
	moreSprites: {
		sind: s_potat,
		xx: 0.2, yy: .3, ww: .35, hh: .7
	},
	mc: 3
};
	// 7th scene
scenes[ind++] = {
	spInd: bg_underwaterGateSmall,
	rmInd: rm_scene3_1,
	title: "Conditionals",
	index: ind,
	scenenum: 13,
	mc: 4
};
	// 8th scene
scenes[ind++] = {
	spInd: bg_underwaterGateOpenSmall,
	rmInd: rm_scene3_2,
	title: "While Loop",
	index: ind,
	moreSprites: {
		sind: s_GS,
		xx: .5, yy: 0, ww: .5, hh: 1
	},
	scenenum: 14,
	mc: 4
};
	// 9th scene
scenes[ind++] = {
	spInd: bg_underwaterGateOpenSmall,
	rmInd: rm_scene3_3,
	title: "For Loop",
	index: ind,
	moreSprites: {
		sind: spr_portal,
		xx: .5, yy: .5, ww: .5, hh: .5
	},
	scenenum: 17,
	mc: 5
};
	// 10th scene
scenes[ind++] = {
	spInd: bg_candylandSmall,
	rmInd: rm_scene4_1,
	title: "Classes",
	index: ind,
	moreSprites: {
		sind: spr_fire_elem
	},
	scenenum: 19,
	mc: 6
};
	// 11th scene
scenes[ind++] = {
	spInd: bg_candylandSmall,
	rmInd: rm_scene4_2,
	title: "Classes + Objects",
	index: ind,
	moreSprites: {
		sind: spr_water_elem
	},
	scenenum: 20,
	mc: 6
};
	// 12th scene
scenes[ind++] = {
	spInd: bg_candylandSmall,
	rmInd: rm_scene4_3,
	title: "Variable Scope",
	index: ind,
	moreSprites: {
		sind: spr_earth_elem
	},
	scenenum: 21,
	mc: 6
};
	// 13th scene
scenes[ind++] = {
	spInd: bg_candylandSmall,
	rmInd: rm_scene4_4,
	title: "Advanced Methods",
	index: ind,
	moreSprites: {
		sind: spr_air_elem
	},
	scenenum: 22,
	mc: 6
};
	// 14th scene
scenes[ind++] = {
	spInd: bg_dino,
	rmInd: rm_scene4_5,
	title: "Fun Dialogue",
	index: ind,
	scenenum: 23,
	mc: 6
};
	// 15th scene
scenes[ind++] = {
	spInd: bg_arena,
	rmInd: rm_scene5_3,
	title: "Minigame",
	index: ind,
	scenenum: 26,
	mc: 7
};
	// the extra images on the bottom
for (var i=0; i<3; i++){
	scenes[ind++] = {
		index: ind,
		moreSprites: {
			sind: s_cuteDino,
			ww: 1, hh: 1,
			xx: 0, yy: 0,
		}
	};
}

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
		
		// some vars taht always exist
		index = scenes[i].index;
		targetWidth = gridBoxWidthPlusSep - gridBoxHorSep;
		targetHeight = gridBoxHeightPlusSep - gridBoxVerSep;
		pageMax = ceil(totalScenes/(numRows*numCols));
		
		// clicking to a new room
		if (variable_struct_exists(scenes[i], "rmInd")){
			sprite_index = scenes[i].spInd;
			rmInd = scenes[i].rmInd;
			title = scenes[i].title;
			scenenum = scenes[i].scenenum;
			
			image_xscale = targetWidth / sprite_width;
			image_yscale = targetHeight / sprite_height;
			
			if (variable_struct_exists(scenes[i], "mc"))
				mc = scenes[i].mc;
			else mc = 0;
		}
		
		// in case in the future there is a specific line of dialogue we want to land on?
		if (variable_struct_exists(scenes[i], "dia"))
			dia = scenes[i].dia;
		else dia = 0;
		
		// the extra sprite to draw on top of the background
		if (variable_struct_exists(scenes[i], "moreSprites"))
			moreSprites = scenes[i].moreSprites;
	}
	
	curX += gridBoxWidthPlusSep;
}
