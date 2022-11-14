/// @description Insert description here
// You can write your code in this editor

event_user(state);

force_gravity();
collide_horizontal();
x += xspeed;
collide_vertical();
y += yspeed;

if !(life) {
	image_alpha -= image_alpha / 8;
	if (image_alpha <= 0.05) {
		instance_destroy();
	}
	xspeed=0;
	yspeed=0;
}