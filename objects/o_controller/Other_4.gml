 /// @description Insert description here
// You can write your code in this editor
if !(instance_exists(o_camera)) {
	instance_create_layer(x, y, "Instances", o_camera);
}

if !(instance_exists(o_input)) {
	instance_create_layer(x, y, "Instances", o_input);
}
