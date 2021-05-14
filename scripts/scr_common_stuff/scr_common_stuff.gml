// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function get(val, def){
	if (val == undefined) return def;
	return val;
}


function debug(){
	var msg = "";
	for (var i=0; i<argument_count; i++)
		msg += string(argument[i]) + " ";
	show_debug_message(msg);
}