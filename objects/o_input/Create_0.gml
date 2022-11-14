/// @description Insert description here
// You can write your code in this editor
gamepads = ds_list_create();
gp_seen = ds_map_create();

up = false;
down = false;
left = false;
right = false;
confirm = false;
cancel = false;

deadzone = 0.5;

input[FIRST, LEFT] = false;
input[FIRST, RIGHT] = false;
input[FIRST, UP] = false;
input[FIRST, DOWN] = false;
input[FIRST, A] = false;
input[FIRST, B] = false;

input[SECOND, LEFT] = false;
input[SECOND, RIGHT] = false;
input[SECOND, UP] = false;
input[SECOND, DOWN] = false;
input[SECOND, A] = false;
input[SECOND, B] = false;