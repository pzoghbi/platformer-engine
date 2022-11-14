/// @description Insert description here
// You can write your code in this editor
var movespeed = mspeed * delta_seconds();
var xinput, yinput;
xinput = (right - left);
// state machine
switch(state_phy){
case GROUND:
	// read input jump commands
	if (a) { sound(a_jump); yspeed = jspeed; }	
	if (b) { mspeed = maxspeed; } else { mspeed = rspeed; }
	// keep moving as long as there is acceleration
	xspeed += ((xinput * movespeed) - xspeed) * gfriction;
	
	// down the slope
	if !(place_meeting(x+xspeed, y+1, o_solid)) {
		var ys = 0;
		while(!place_meeting(x+xspeed, y+ys, o_solid) and (ys<8)){
			ys++;
		}
		if place_meeting(x+xspeed, y+ys+1, o_solid) {
			if (yspeed + 1)	{
				yspeed += ys;
			}
		}
	}
break;
case AIR:
	// keep moving direction before jumped	
	xspeed += xinput * (abs(xspeed) < movespeed) * 0.250; // steer harder
	xspeed *= afriction;
	player_squash_enemy();	
	image_index = 1;	
break;
// todo ladder
}

switch(state){
case DEAD:
	player_dying();
break;
default:
	if (invincible) {
		if (alarm[0] <= 0) {
			invincible = false;
		}
	}
	if !(life) {
		sound(a_death);
		state = DEAD;
	}
	// return to ground state
	state_phy = (entity_move_ground()) ? GROUND: AIR;
	entity_move_platform();
	if !place_meeting(x, y, o_solid) { pos_x=x;	pos_y=y; }
	collide_horizontal();
	// if colliding, move to safe position
	if place_meeting(x, y, o_solid) { x = pos_x; y = pos_y; }
	entity_move_hor_ext();
	force_gravity();
	collide_vertical();
	entity_move_ver_ext();
break;
}