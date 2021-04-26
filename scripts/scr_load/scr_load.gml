function scr_load() {
	if(file_exists("SaveFile.dat")){
		game_load("SaveFile.dat");
		scr_load_vars();
	}


}
