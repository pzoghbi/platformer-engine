/// @description Insert description here
// You can write your code in this editor

if (state == trap.ready) {
	alarm[0] = 60;
	image_index = 1;
	sound(a_danger);
	instance_activate_object(instance);
	state = trap.active;
}