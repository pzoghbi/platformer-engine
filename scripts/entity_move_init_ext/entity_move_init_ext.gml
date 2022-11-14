/// @arg hsp
/// @arg vsp
/// @arg grav
/// @arg jmpsp
/// @arg runsp
/// @arg maxsp
/// @arg afric
/// @arg gfric
/// @arg xbnc
/// @arg ybnc

xmove = 0;
ymove = 0;
xspeed = argument0;
yspeed = argument1;
gspeed = argument2;
jspeed = argument3;
if (argument4) {
	rspeed = argument4;
	mspeed = rspeed;
	maxspeed = argument5;
	afriction = argument6;
	gfriction = argument7;
}
bounce_x = argument8;
bounce_y = argument9;
