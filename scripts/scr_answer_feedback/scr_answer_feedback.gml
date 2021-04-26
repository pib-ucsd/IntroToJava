function scr_answer_feedback(argument0) {
	target = argument0;
	if( target == false){ 
		feedback = "Click a blank space to check if your answer fits!"
	} else if(string_count(";", target)==1 and string_count(";",keyboard_string + aft) != 1){
		feedback = "Did you remember the semicolon?"
	} else if(string_count(";", target) > string_count(";",keyboard_string + aft)){
		feedback = "Too many semicolons?"
	} else if(string_count("\"", target) != string_count("\"",keyboard_string + aft)){
		feedback = "Did you have the right number of quotes (\")?"
	} else if(string_count("(", target) != string_count("(",keyboard_string + aft) || string_count(")", target) != string_count(")",keyboard_string + aft)){
		feedback = "Double check your parentheses!"
	} else if(string_count("[", target) < string_count("[",keyboard_string + aft) || string_count("]", target) < string_count("]",keyboard_string + aft)){
		feedback = "Use [ and ] to access elements in an array!"
	} else if(string_count(".", target) != 0 && string_count(".",keyboard_string + aft) < string_count(".", target)){
		feedback = "Use \".\" to access methods and variables inside objects and classes!"
	} else if(string_count("<", target) != string_count(">",keyboard_string + aft) || string_count(">", target) != string_count(">",keyboard_string + aft)){
		feedback = "Did you use the wrong comparison operator?"
	} else if(string_count("&&", target) != string_count("&&",keyboard_string + aft)){
		feedback = "&& is the conditional operator for \"and\""
	} else if(string_count("||", target) != string_count("||",keyboard_string + aft)){
		feedback = "|| is the conditional operator for \"or\""
	} else if(string_count("==", target) != string_count("==",keyboard_string + aft)){
		feedback = "== is the conditional operator for \"equals\""
	} else if(string_count("!", target) != string_count("!",keyboard_string + aft)){
		feedback = "! is the operator for \"not\""
	} else if(string_lower(target) == string_lower(keyboard_string + aft)){
		feedback = "Double check your capitalization!"
	} else if(string_replace_all(target, " ", "") == string_replace_all(keyboard_string + aft, " ", "")){
		feedback = "Double check your spacing!"
	} //else if(string_lettersdigits(target) == string_lettersdigits(keyboard_string + aft)){
		//feedback = "Double check your punctuation!"
	//} behavior not as expected
	else {
		var types = ["int", "double", "char", "String"];
		var go = true;
		for(var i=0; i<4; i++){
			if(string_count(types[i], target)==1 and string_count(types[i],keyboard_string + aft)!=1){
				feedback = "Did you declare the type of variable? (" + types[i] + ")"
				go = false;
			}
		}
		if(go){
			feedback = "Try again!";
		}
	}


}
