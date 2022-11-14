/// @description Insert description here
// You can write your code in this editor

draw_self();

// debugging
//draw_set_color(c_red);
//draw_rectangle(x-sprite_width/2+xspeed, y-sprite_height/2+yspeed, 
//x+sprite_width/2+xspeed, y+sprite_height/2+yspeed, true);
//draw_set_color(c_white);

if (invincible) {
	gpu_set_fog(true, c_white, 0, 1);
	alpha += 0.5;
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale,
		image_angle, image_blend, cos(alpha));
	gpu_set_fog(false, c_white, 0, 1);
}