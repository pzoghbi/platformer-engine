// collide walls horizontally
if place_meeting(x+xspeed, y, o_solid) {
	// slope calculation
	var ys = 0;
	while place_meeting(x+xspeed, y-ys, o_solid) and (ys < max(abs(xspeed), 8)){
		ys++;
	}
	
	if place_meeting(x+xspeed, y-ys, o_solid) {
		while !(place_meeting(x+sign(xspeed), y, o_solid )) {
			x+=sign(xspeed);
		}
		xmove = 0;
		if (bounce_x) {
			xspeed = -(xspeed / 2);
			if (abs(round(xspeed)) < 1) {
				xspeed = 0;
			}
		} else {
			xspeed = 0;
		}
		return (true);
	} else {
		// going up the slope
		y -= ys;
	}
}

return (false);