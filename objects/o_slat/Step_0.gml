/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
switch(state) {
	case slat.normal:
		if (place_meeting(x, y - 1, o_player)) {
			state = slat.press;
			pressure = pressure + 8;
		} else {
			// remove pressure
			pressure = (pressure > 0) ? pressure-4: 0;
		}
	break;
	case slat.press:
		if !(place_meeting(x, y - 1, o_player)) {
			state = slat.normal;
		} else {
			if (pressure < 100) { pressure+=8; }
			else { state = slat.fall; }
		}
	break;
	case slat.fall:
		force_gravity();
		y += yspeed;
	break;
}