/// @description Insert description here
// You can write your code in this editor

draw_self();
if (invincible) and (life) {
	gpu_set_fog(true, c_white, 0, 1);
	draw_sprite_ext(sprite_index, image_index, x, y,
	image_xscale, image_yscale, image_angle, c_black, sin(alpha++));
	gpu_set_fog(false, c_white, 0, 1);
} 