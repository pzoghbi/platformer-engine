/// @description Insert description here
// You can write your code in this editor

global.player[0] = noone;
global.player[1] = noone;

for(var i = 0; i < instance_number(o_player); i++){
	var myPlayer = instance_find(o_player, i);
	global.player[i] = myPlayer;
}

// Music
//audio_play_sound(a_music, 8, true);

trigger_restart = false;