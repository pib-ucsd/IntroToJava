//using step instead of left pressed because I'm jank and need to do this
if(leftReleased && !global.paused){
	show_debug_message("scenenum: " + string(global.scenenum) + " dia: " + string(o_dialogue.dia) + " " + string(room_get_name(room)));
	#region All the stuff that should occur in the left pressed event
	#region this stuff are the event triggers
		var eventFlag		= global.arrOfEventFlagCodes[global.scenenum, o_dialogue.dia + 1];
		var eventAllowed	= !global.arrOfFinishedEvents[global.scenenum, o_dialogue.dia + 1];
		var notebookCode	= global.arrOfNotebookFlagCodes[global.scenenum, o_dialogue.dia + 1];
		var scenenumPrev	= global.scenenum;		// for updating finished events arr but if scenenum changed
		if(eventFlag != -1 && eventAllowed){
			#region various codes
			if(eventFlag == eventCodes.notebook){
				global.scenenum++;
				global.rmnum++;
				o_notebook_widget.visible = false;	//to prevent widget from accessed while in notebook
				//if correct scenenum, use notebookCode to determine global.pagenum and global.pageMax (hard code)
				switch(notebookCode){
				case 0:
					global.pagenum = 0;
					global.pageMax = 3;
					break;
				case 1:
					global.pagenum = 4;
					global.pageMax = 7;
					break;
				case 2:
					global.pagenum = 8;
					global.pageMax = 8;
					break;
				case 3:
					global.pagenum = 9;
					global.pageMax = 13;
					break;
				case 4:
					global.pagenum = 14;
					global.pageMax = 17;
					break;
				case 5:
					global.pagenum = 18;
					global.pageMax = 21;
					break;
				case 6:
					global.pagenum = 22;
					global.pageMax = 24;
					break;
				case 7:
					global.pagenum = 25;
					global.pageMax = 26;
					break;
				case 8:
					global.pagenum = 27;
					global.pageMax = 28;
					break;
				case 9:
					global.pagenum = 29;
					global.pageMax = 32;
					break;
				case 10:
					global.pagenum = 33;
					global.pageMax = 36;
					break;
				case 11:
					global.pagenum = 37;
					global.pageMax = 41;
					break;
				case 12:
					global.pagenum = 42;
					global.pageMax = 45;
					break;
				default:
					global.pagenum = 0;
					global.pageMax = 1;
					show_debug_message("o_nxtbtn | notebookCode: " + string(notebookCode));
				}
				if(notebookCode != -1){ // redundant check for 
					global.notebookByDialogue = true;
					room_goto(rm_not2);
				}
			}
			else if(eventFlag == eventCodes.flash){
				instance_create_depth(0,0,-1000,o_flash);
			}
			else if(eventFlag == eventCodes.next){
				global.scenenum ++;
				global.rmnum ++;
				if(room == rm_scene6_1) {
					global.dia = 0;
				}
				room_goto_next();
			}
			else if(eventFlag == eventCodes.chlg){
				global.scenenum ++;
				global.rmnum ++;
				//kept here in case challenges are not the rooms after the dialogue
				room_goto_next();
			}
			else if(eventFlag == eventCodes.miniShake){
				o_shake.mini = true;
				o_shake.shake = true;
				show_debug_message("miniShakeTriggered");
			}
			else if(eventFlag == eventCodes.miniMiniShake){
				o_shake.miniMini = true;
				o_shake.shake = true;
			}
			else if(eventFlag == eventCodes.fadeGQ && fadeAllowed){
				o_GQ.fade = true;
				fadeAllowed = false;
				leftReleased = false;
				eventFlag = -1;
				exit;
			}
			else if(eventFlag == eventCodes.smokingGQ){
				//effect_create_below(ef_smoke,o_dialogue.charTemp.x,o_dialogue.charTemp.y + o_dialogue.charTemp.sprite_height * 1 / 4,1,c_gray);
				//same as fading gs, occurs at a certain time (I didn't figure out how to do so)
			}
			else if(eventFlag == eventCodes.openGate){
				global.scenenum ++;
				global.rmnum ++;
				room_goto_next();//openGate can be replaced by next
			}
			else if(eventFlag == eventCodes.fadeGS){
				//since the fade has to occur at a specific time, I found it easier to make this event occur with its own code within the o_dialogue object
			}
			else if(eventFlag == eventCodes.transform){
				global.scenenum ++;
				global.rmnum ++;
				global.rmnum ++;
				//start animation of ld transformation
				//trigger change of arena to dark arena
				//could just do multiple rooms here
				room_goto_next();
			}
			else if(eventFlag == eventCodes.bigShake){
				o_shake.shake = true;
			}
			else if(eventFlag == eventCodes.miniGame){
				global.scenenum ++;
				global.rmnum ++;
				room_goto_next();
			}
			else if(eventFlag == eventCodes.widget){
				o_notebook_widget.visible = true;
				global.notebookWidgetVisible = true;
			}
			else if(eventFlag == eventCodes.fade){
				global.scenenum ++;
				instance_create_depth(0,0,-1600, obj_fade);
			}
			else if(eventFlag == eventCodes.zoomLoady){
				if(instance_exists(o_zoomToLoady)){
					o_zoomToLoady.flag = true;
				}
			}
			else if(eventFlag == eventCodes.endGame){
				room_goto(rm_game_end);
			}
			#endregion
			if(scenenumPrev == global.scenenum){
				global.arrOfFinishedEvents[global.scenenum, o_dialogue.dia + 1] = true;
			}
			else{
				global.arrOfFinishedEvents[global.scenenum - 1, o_dialogue.dia + 1] = true;
			}
			notebookCode = -1;
			eventFlag = -1;
		}
	#endregion

	//this part of the code
	//is the functionality of the character by character appearing effect
	//and the effect of not char by char on every run through after the first
	#region char by char appearing effect in dialogue
		if(o_dialogue.dia < array_length_2d(global.dialogue, global.scenenum) - 1){
			if(o_dialogue.dia < o_dialogue.frwd){
				o_dialogue.chars = string_length(global.dialogue[global.scenenum, ++ o_dialogue.dia]);
			}
			else{
				o_dialogue.chars = 0;
				o_dialogue.frwd = ++ o_dialogue.dia;
			}
		}
		else if(o_dialogue.dia == array_length_2d(global.dialogue, global.scenenum) - 1){
			o_dialogue.chars = string_length(global.dialogue[global.scenenum, o_dialogue.dia]);
			image_blend = make_color_rgb(160, 65, 13);
		}
		else{
			show_debug_message("something is wrong, scene:" + string(global.scenenum) + " dia: " + string(o_dialogue.dia)); 
		}
		fadeAllowed = true;
	#endregion
	
	
	#endregion
	leftReleased = false;
}

#region update color
	//used to change color at the end of the dialogue
	if(o_dialogue.dia == array_length_2d(global.dialogue, global.scenenum) - 1){
		if(image_blend != make_color_rgb(255,200,200)){
			image_blend = make_color_rgb(255,200,200);
		}
	}
	else{
		image_blend = make_color_rgb(50,250,50);	
	}
#endregion