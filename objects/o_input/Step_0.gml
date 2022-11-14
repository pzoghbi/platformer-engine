/// @description Insert description here
// You can write your code in this editor
//for(var i; i < 12; i++){
//	if gamepad_is_connected(i){
//		gp_seen[? i]=true;
//	} else {
//		gp_seen[? i]=false;
//	}
//}

var assigned = false;
for(var i=0; i < 12; i++){
	if gamepad_is_connected(i){
		if !(gp_seen[? i]){
			if !assigned
			{ 
				ds_list_add(gamepads, i);
				gp_seen[? i] = true;
				assigned = true;
			} else {
				gp_seen[? i] = true;
			}
		}
	}
}

for(var i = 0; i < ds_list_size(gamepads); i++){
	
	var GP = ds_list_find_value(gamepads, i);
	
	if !(gamepad_is_connected(GP)) { return 0; }
	
	// movement
	if (gamepad_axis_value(GP, gp_axislh) < -deadzone){
		input[i, LEFT] = true;
	} else {
		input[i, LEFT] = false;
	}
	
	if (gamepad_axis_value(GP, gp_axislh) > deadzone){
		input[i, RIGHT] = true;
	} else {
		input[i, RIGHT] = false;
	}
	
	if (gamepad_axis_value(GP, gp_axislv) < -deadzone){
		input[i, UP] = true;
	} else {
		input[i, UP] = false;
	}
	
	if (gamepad_axis_value(GP, gp_axislv) > deadzone){
		input[i, DOWN] = true;
	} else {
		input[i, DOWN] = false;
	}
	// buttons
	if (gamepad_button_check_pressed(GP, gp_face1)){
		input[i, A] = true;
	} else {
		input[i, A] = false;
	}
	
	if (gamepad_button_check_pressed(GP, gp_face3)){
		input[i, B] = true;
	} else if (gamepad_button_check_released(GP, gp_face3)){
		input[i, B] = false;
	}
	//triggers
		
	//option buttons
	if (gamepad_button_check_pressed(GP, gp_start)){
		input[i, START] = true;
	} else {
		input[i, START] = false;
	}
	
	if (gamepad_button_check_pressed(GP, gp_select)){
		input[i, SELECT] = true;
	} else {
		input[i, SELECT] = false;
	}
}

if (room == r_mainmenu) {
	if (ds_list_size(gamepads)) {
		input_get_menu(gamepads[|0]);
	}
}
