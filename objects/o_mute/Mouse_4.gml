show_debug_message("o_mute pressed");
switch image_index{
	case 0:
		image_index = 1;
		global.musicMuted = true;
		audio_pause_all();
		break;
	case 1:
		image_index = 0;
		global.musicMuted = false;
		audio_resume_all();
		break;
	default:
		show_debug_message("o_mute: Left Released, default");
		break;
}

window_set_cursor(cr_default);