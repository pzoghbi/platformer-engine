/// @description Insert description here
// You can write your code in this editor

o_player.start_x = x;
o_player.start_y = y;
// reset other flags to normal
with (object_index) {
	sprite_index = s_flag;
}
// set this one to active
sprite_index = s_flag_active;
image_speed = 1;