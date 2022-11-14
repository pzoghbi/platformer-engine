/// @description Squash enemies
var enemy = instance_place(x, y + yspeed, o_enemy);
if (enemy) {
	if (yspeed > 0) {
		if !(enemy.invincible) {
			yspeed = jspeed;
			with (enemy) {
				state = 0;
				life -= 1;
				invincible = true;
				alarm[1] = 60;
				break;
			}
		}
	}
}