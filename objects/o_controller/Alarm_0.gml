/// @description Insert description here
// You can write your code in this editor

if !instance_exists(o_player_start) {
	room_restart();
} else {
	instance_create_layer(o_player_start.xstart, o_player_start.ystart, "Instances", o_player_square);
}