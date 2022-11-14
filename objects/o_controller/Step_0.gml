/// @description Insert description here
// You can write your code in this editor

global.player[0] = instance_find(o_player, 0);
global.player[1] = instance_find(o_player, 1);
global.player[2] = instance_find(o_player, 2);

if trigger_restart {
	alarm[0] = game_get_speed(gamespeed_fps);
	trigger_restart = false;
}