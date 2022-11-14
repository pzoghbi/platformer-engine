/// @description Insert description here
// You can write your code in this editor

image_angle = lengthdir_x(len, rot);
rot += spd;
if (rot > 900) {
	effect_create_above(ef_firework, x, y, 5, c_yellow);
	alarm[0] = 60;
	len = 0;
	rot = 0;
	spd = 0;
}