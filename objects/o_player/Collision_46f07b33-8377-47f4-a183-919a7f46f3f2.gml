/// @description Insert description here
// You can write your code in this editor

//if (place_meeting(x, y + yspeed, other) and (yspeed > 0)) {
//	other.life -= 1;
//	other.invincible = true;
//	other.alarm[1] = 60;
//	yspeed = jspeed;
//} else {
//	//state = DEAD;
//}
if !(other.invincible) {
	player_hurt(1);
}
