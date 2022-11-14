/// @description Jump state
image_index = 1;

if (place_meeting(x, y+1, o_solid)) {
	state = frog.idle;
	alarm[0] = 60;
}