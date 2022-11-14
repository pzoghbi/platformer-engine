/// @description Insert description here
// You can write your code in this editor

// control view
var OF = o_player;
var n_players = instance_number(OF);
var h_border = 256, v_border = 192;
var dX = 0, dY = 0;
xTo = 0;
yTo = 0;  
if instance_exists(OF) {
	for(var i = 0; i < n_players; i++) {
		xTo += instance_find(OF, i).x;
		yTo += instance_find(OF, i).y;
	}
	if instance_exists(global.player[0]){
		if instance_exists(global.player[1]) {
			dX = global.player[1].x - global.player[0].x;
			dY = global.player[1].y - global.player[0].y;
		} else {
			dX = 0;
			dY = 0;
		}
	}
	dX = abs(dX)+h_border;
	dY = abs(dY)+v_border;
}

xTo /= n_players;
yTo /= n_players;

x = lerp(x, round(xTo), 1/2);
y = lerp(y, round(yTo), 1/2);

x = clamp(x, cam_width / 2, room_width - cam_width / 2);
y = clamp(y, cam_height / 2, room_height - cam_height / 2);

var c_width = max(cam_width, dX);
var c_height = max(c_width/cam_ratio, dY);

// 
//if (c_width > cam_width) {
//	y = y - (c_height/2 - cam_height/2);
//}

if (c_height > cam_height) {
	c_width = max(c_height * cam_ratio, dX);
}

var viewmat = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
var projmat = matrix_build_projection_ortho(c_width, c_height, 1.0, 32000.0);

camera_set_view_mat(camera, viewmat);
camera_set_proj_mat(camera, projmat);

// activate region
//with (par_controller) {
//	x = other.x;
//	y = other.y;
//}

//instance_deactivate_region(
//	x - c_width/2 - h_border, 
//	y - c_height/2 - v_border, 
//	c_width + h_border, 
//	c_height + v_border, 
//	false, true
//);

//instance_activate_region(
//	x - c_width/2 - h_border, 
//	y - c_height/2 - v_border, 
//	c_width + h_border, 
//	c_height + v_border, 
//	true
//);
/*
if layer_exists("Parallax")
{
	var l_id = layer_get_id("Parallax");
	layer_x(l_id, 400 - OF.x / room_width * 400);
}
*/