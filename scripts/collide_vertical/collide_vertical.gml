// collide with the ground
if place_meeting(x, y+yspeed, o_solid) {
	while !(place_meeting(x, y+sign(yspeed), o_solid)) {
		y += sign(yspeed);
	}
	if (bounce_y) {
		yspeed = -yspeed/2;
		if (round(abs(yspeed)) < 1) {
			yspeed = 0;
		}
	} else {
		yspeed = 0;
	}
}

return (yspeed == 0);