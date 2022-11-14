/// @description Insert description here
// You can write your code in this editor
draw_self();
gpu_set_fog(true, c_red, 0, 1);
draw_sprite_ext(sprite_index, image_index, 
x, y, image_xscale, image_yscale, 
image_angle, image_blend, (pressure/100));
gpu_set_fog(false, 0, 0, 0);
draw_set_color(c_blue);
draw_text(x, y - 64, string(pressure));