/// @description Insert description here
// You can write your code in this editor

image_speed = 0;
image_index = image_number-1;

if room_exists(room_next(room)) {
	room_goto_next();
} else {
	show_message("The winner is You.");
}