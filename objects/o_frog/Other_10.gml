/// @description Idle state
scale = image_yscale;
image_index = 0;

xspeed = 0;
yspeed = 0;

if (alarm[0] <= 0) {
	if distance_to_object(o_player) < 300 {
		state = frog.jump;
		var dir = sign(-x + instance_nearest(x, y, o_player).x);
		image_xscale = dir * scale;
		xspeed = dir * 5;
		yspeed = jspeed;
	}
}