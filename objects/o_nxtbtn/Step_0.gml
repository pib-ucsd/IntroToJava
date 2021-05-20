//using step instead of left pressed because I'm jank and need to do this
if(leftReleased && !global.paused){
	show_debug_message("scenenum: " + string(global.scenenum) + " dia: " + string(o_dialogue.dia) + " " + string(room_get_name(room)));
	#region All the stuff that should occur in the left pressed event
	#region this stuff are the event triggers
		var eventFlag		= global.arrOfEventFlagCodes[global.scenenum, o_dialogue.dia + 1];
		var eventAllowed	= !global.arrOfFinishedEvents[global.scenenum, o_dialogue.dia + 1];
		var notebookCode	= global.arrOfNotebookFlagCodes[global.scenenum, o_dialogue.dia + 1];
		var scenenumPrev	= global.scenenum;		// for updating finished events arr but if scenenum changed
		
		show_debug_message(string(eventFlag) + " and " + string(eventAllowed));
		
		if(eventFlag != -1 && eventAllowed){
			#region various codes
			if(eventFlag == eventCodes.notebook){
				global.scenenum++;
				global.rmnum++;
				
				if (instance_exists(o_notebook_widget))
					o_notebook_widget.visible = false;	//to prevent widget from accessed while in notebook
					
				//if correct scenenum, use notebookCode to determine global.pagenum and global.pageMax (hard code)
				switch(notebookCode){
				case 0:
					global.pagenum = 0;
					global.pageMax = 3;
					global.chlgRmInd = 0;
					break;
				case 1:
					global.pagenum = 4;
					global.pageMax = 7;
					global.chlgRmInd = 2;
					break;
				case 2:
					global.pagenum = 8;
					global.pageMax = 8;
					global.chlgRmInd = 3;
					break;
				case 3:
					global.pagenum = 9;
					global.pageMax = 13;
					global.chlgRmInd = 4;
					break;
				case 4:
					global.pagenum = 14;
					global.pageMax = 17;
					global.chlgRmInd = 5;
					break;
				case 5:
					global.pagenum = 18;
					global.pageMax = 21;
					global.chlgRmInd = 6;
					break;
				case 6:
					global.pagenum = 22;
					global.pageMax = 24;
					global.chlgRmInd = 7;
					break;
				case 7:
					global.pagenum = 25;
					global.pageMax = 26;
					global.chlgRmInd = 8;
					break;
				case 8:
					global.pagenum = 27;
					global.pageMax = 28;
					global.chlgRmInd = 9;
					break;
				case 9:
					global.pagenum = 29;
					global.pageMax = 32;
					global.chlgRmInd = 10;
					break;
				case 10:
					global.pagenum = 33;
					global.pageMax = 36;
					global.chlgRmInd = 11;
					break;
				case 11:
					global.pagenum = 37;
					global.pageMax = 41;
					global.chlgRmInd = 12;
					break;
				case 12:
					global.pagenum = 42;
					global.pageMax = 45;
					global.chlgRmInd = 13;
					break;
				default:
					global.pagenum = 0;
					global.pageMax = 1;
					show_debug_message("o_nxtbtn | notebookCode: " + string(notebookCode));
				}
				
				show_debug_message("nodebook code: "+ string(notebookCode));
				
				if(notebookCode != -1){ // redundant check for 
					global.notebookByDialogue = true;
					window_set_cursor(cr_default);
					room_goto(rm_not2);
				}
			}
			else if(eventFlag == eventCodes.flash){show_debug_message("flash");
				instance_create_depth(0,0,-1000,o_flash);
			}
			else if(eventFlag == eventCodes.next){show_debug_message("next");
				global.scenenum ++;
				global.rmnum ++;
				if(room == rm_scene6_1) {
					global.dia = 0;
				}
				window_set_cursor(cr_default);
				room_goto_next();
			}
			else if(eventFlag == eventCodes.chlg){show_debug_message("chlg");
				global.scenenum ++;
				global.rmnum ++;
				//kept here in case challenges are not the rooms after the dialogue
				window_set_cursor(cr_default);
				room_goto_next();
			}
			else if(eventFlag == eventCodes.miniShake){show_debug_message("minishake");
				if (!instance_exists(o_shake)) instance_create_depth(0, 0, 0, o_shake);
				o_shake.mini = true;
				o_shake.shake = true;
			}
			else if(eventFlag == eventCodes.miniMiniShake){show_debug_message("miniminishake");
				if (!instance_exists(o_shake)) instance_create_depth(0, 0, 0, o_shake);
				o_shake.miniMini = true;
				o_shake.shake = true;
			}
			else if(eventFlag == eventCodes.fadeGQ && fadeAllowed){show_debug_message("fadegq");
				o_GQ.fade = true;
				fadeAllowed = false;
				leftReleased = false;
				eventFlag = -1;
				exit;
			}
			else if(eventFlag == eventCodes.smokingGQ){show_debug_message("smokegq");
				//effect_create_below(ef_smoke,o_dialogue.charTemp.x,o_dialogue.charTemp.y + o_dialogue.charTemp.sprite_height * 1 / 4,1,c_gray);
				//same as fading gs, occurs at a certain time (I didn't figure out how to do so)
			}
			else if(eventFlag == eventCodes.openGate){show_debug_message("opengate");
				global.scenenum ++;
				global.rmnum ++;
				window_set_cursor(cr_default);
				room_goto_next();//openGate can be replaced by next
			}
			else if(eventFlag == eventCodes.fadeGS){show_debug_message("fadegs");
				//since the fade has to occur at a specific time, I found it easier to make this event occur with its own code within the o_dialogue object
			}
			else if(eventFlag == eventCodes.transform){show_debug_message("transform");
				global.scenenum ++;
				global.rmnum ++;
				global.rmnum ++;
				//start animation of ld transformation
				//trigger change of arena to dark arena
				//could just do multiple rooms here
				window_set_cursor(cr_default);
				room_goto_next();
			}
			else if(eventFlag == eventCodes.bigShake){show_debug_message("bigshake");
				o_shake.shake = true;
			}
			else if(eventFlag == eventCodes.miniGame){show_debug_message("minigame");
				global.scenenum ++;
				global.rmnum ++;
				room_goto_next();
			}
			else if(eventFlag == eventCodes.widget){show_debug_message("widget");
				if(instance_exists(o_notebook_widget)){
					o_notebook_widget.visible = true;
				}
				else {
					instance_create_depth(1762, 45, -1000, o_notebook_widget);
					with(o_notebook_widget) visible = true;
				}
				global.notebookWidgetVisible = true;
			}
			else if(eventFlag == eventCodes.fade){show_debug_message("fade");
				global.scenenum ++;
				instance_create_depth(0,0,-1600, obj_fade);
			}
			else if(eventFlag == eventCodes.zoomLoady){show_debug_message("zoomloady");
				if(instance_exists(o_zoomToLoady)){
					o_zoomToLoady.flag = true;
				}
			}
			else if(eventFlag == eventCodes.endGame){show_debug_message("endgame");
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