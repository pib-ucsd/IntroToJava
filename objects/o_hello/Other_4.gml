/// @description Music Control
// You can write your code in this editor

bg_priority = 10;

switch(room){
	case rm_start:
		audio_stop_all();
		break;
	case rm_opening_dialogue:
		audio_stop_all();
		audio_play_sound(snd_opening, bg_priority, true);
		break;
	case rm_enter_computer:
		audio_stop_all();
		audio_play_sound(snd_portal, bg_priority, true);
		break;
	case rm_scene2_1:
		audio_stop_all();
		audio_play_sound(snd_scene2_bw, bg_priority, true);
		break;
	case rm_scene2_5:
		audio_stop_all();
		audio_play_sound(snd_scene2_color, bg_priority, true);
		break;
	case rm_scene3_1:
		audio_stop_all();
		audio_play_sound(snd_scene3, bg_priority, true);
		break;
	case rm_scene4_1:
		audio_stop_all();
		audio_play_sound(snd_scene4, bg_priority, true);
		break;
	case rm_scene5_1:
		audio_stop_all();
		audio_play_sound(snd_scene5_bright, bg_priority, true);
		break;
	case rm_scene5_3:
		audio_stop_all();
		audio_play_sound(snd_scene5_dark, bg_priority, true);
		break;
	case rm_scene6_1:
		audio_stop_all();
		audio_play_sound(snd_epilogue, bg_priority, true);
		break;
	
}
	