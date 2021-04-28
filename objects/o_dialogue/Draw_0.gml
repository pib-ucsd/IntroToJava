/// @description Insert description here
// You can write your code in this editor 
draw_self();
var scenenum = global.scenenum;

if(!array_length_2d(global.dialogue, scenenum)){
	show_error("global.dialogue doesn't exist here", false);
}

//global.speak to determine the speaker image
//also draw global.dialogue text
if(dia <= array_length_2d(global.dialogue, scenenum)){
	if(dia != diaPrev){
		if(charTemp != -1){
			instance_destroy(charTemp);
			charTemp = -1;
		}
		#region speaker set up
		if(global.speak[scenenum,dia] == "Loady"){
			charTemp = instance_create_layer(1350, 336, "inst_static_chars", o_loady);
			if(scenenum > 3){
				charTemp.image_index = 1;
			}
			else{
				charTemp.image_index = 0;
			}
			charTemp.image_xscale = .6;
			charTemp.image_yscale = .6;
		}
		else if(global.speak[scenenum,dia] == "Rimac"){
			charTemp = instance_create_layer(1568+70, 160+50, "inst_static_chars", o_fpotat);
			// +70 and +50 for html5 version w/o sprite
			charTemp.image_xscale = .8;
			charTemp.image_yscale = .8;
		}
		else if(global.speak[scenenum,dia] == "General Quack"){
			charTemp = instance_create_layer(1150, 200, "inst_static_chars", o_GQ);
			if(scenenum == global.sceneGQ && dia == global.diaGQ){
				charTemp.smoke = true;
			}
			charTemp.image_xscale = .3;
			charTemp.image_yscale = .3;
		}
		else if(global.speak[scenenum,dia] == "Sun God"){
			charTemp = instance_create_layer(1280, 240, "inst_static_chars", o_SG);
			charTemp.image_xscale = .6;
			charTemp.image_yscale = .6;
		}
		else if(global.speak[scenenum, dia] == "General Spoik"){
			charTemp = instance_create_layer(1300, 200, "inst_static_chars", o_GS);
			if(scenenum == global.sceneGS && dia == global.diaGS){
				charTemp.fade = true;
			}
			charTemp.image_xscale = .8;
			charTemp.image_yscale = .8;
		}
		else if(global.speak[scenenum, dia] == "Giant Meme Lord Dino"){
			charTemp = instance_create_layer(1200, 150, "inst_static_chars", o_lordDino);
			charTemp.image_xscale = .8;
			charTemp.image_yscale = .8;
		}
		else if(global.speak[scenenum, dia] == "Small Serious Lord Dino"){
			charTemp = instance_create_layer(1700, 600, "inst_static_chars", o_smolLordDino);
			charTemp.image_xscale = 1;
			charTemp.image_yscale = 1;
		}
		#endregion
	}
	
#region draw text
	draw_set_font(font_dia2);
	draw_set_color(c_black);
	draw_text(x+60,y+55,global.speak[scenenum,dia]);
	draw_set_font(font_dia);
	draw_set_color(c_gray);
	//draw_text(x+50,y+200,string_copy(string_wordwrap_width(global.dialogue[scenenum,dia],sprite_width-80,"\n",true),1,chars));
	theCurrDia = global.dialogue[scenenum, dia];
	draw_text_ext(x+50,y+200,string_copy(theCurrDia,1,chars), -1, sprite_width - 90);
#endregion
}
diaPrev = dia;