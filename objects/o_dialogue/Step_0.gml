/// @description Insert description here
// You can write your code in this editor

if(global.scenenum == 0){
	image_index = 0;
}
else if(global.scenenum >= 18){
	image_index = 2;
}
else if(global.scenenum >= 4){
	image_index = 1;
}
if(chars < 200){
	chars += 0.4;
}
