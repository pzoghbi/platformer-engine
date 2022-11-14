/// @description Insert description here
// You can write your code in this editor

OF = noone;

/* view setup */
view_enabled = true;
view_visible[0] = true;
view_wport[0] = 1024;
view_hport[0] = 768;

cam_width = 1024;
cam_height = 768;
cam_ratio = cam_width / cam_height;
if (cam_ratio<1) {
	cam_ratio = cam_height / cam_width;
}

/* camera setup */
camera = camera_create();

var viewmat = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
var projmat = matrix_build_projection_ortho(cam_width, cam_height, 1.0, 32000.0);

camera_set_view_mat(camera, viewmat);
camera_set_proj_mat(camera, projmat);

//camera_set_view_pos(camera, x, y);
//camera_set_view_size(camera, cam_width, cam_height);
// set view camera
view_set_camera(0, camera);

window_set_fullscreen(false);