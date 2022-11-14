/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

state = frog.idle; 
enum frog {
	idle,
	jump,
	attack
}

entity_move_init_ext(0, 0, 1, -16, -1, 0, 0, 0, true, false);

/// drawing
scale = 1;
alpha = 0;