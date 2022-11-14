/// @description Insert description here
// You can write your code in this editor


collide_horizontal();
x += xspeed;

force_gravity();
collide_vertical();
y += yspeed;


image_angle -= xspeed;