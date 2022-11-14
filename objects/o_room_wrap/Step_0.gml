/// @description Insert description here
// You can write your code in this editor

with (o_player) {
	if (x < 0) {
		if !(place_meeting(room_width, y, o_solid)) {
			x = room_width;
		}
	} else if (x > room_width) {
		if !(place_meeting(0, y, o_solid)) {
			x = 0;
		}
	}
}