show_debug_message("o_mute pressed");
switch image_index{
	case 0:
		image_index = 1;
		global.musicMuted = true;
		break;
	case 1:
		image_index = 0;
		global.musicMuted = false;
		break;
	default:
		show_debug_message("o_mute: Left Released, default");
		break;
}