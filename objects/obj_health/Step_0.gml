/// @description Monitor music changes
// You can write your code in this editor
var percent = (health / max_health) * 100;

switch_point = 25;

if(percent < switch_point && prev_percent >= switch_point){
	audio_pause_sound(minigame_intense);
	audio_resume_sound(minigame_jazzy);


} else if(percent > switch_point && prev_percent <= switch_point){
	audio_pause_sound(minigame_jazzy);
	audio_resume_sound(minigame_intense);
}

prev_percent = percent;