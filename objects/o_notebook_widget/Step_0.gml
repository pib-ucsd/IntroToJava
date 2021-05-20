// insurance that the notebook widget isnt visible when it shouldn't be
switch(global.notebookWidgetVisible){
	case 0: if(visible) visible = false; break;
	case 1: visible = true;
}