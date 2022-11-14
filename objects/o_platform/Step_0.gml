/// @description Insert description here
// You can write your code in this editor
var temp_x, temp_y,
	xmove, ymove,
	length;

// platform movement
switch(type){
case platform.hor:
length = (lengthdir_x(distance, rot));
xmove = xstart + length;
temp_x = x;
xspeed = xmove - temp_x;	// difference between future and current position
x += (xspeed);
break;
case platform.ver:
length = (lengthdir_y(distance, rot));
ymove = ystart + length;
temp_y = y;
yspeed = ymove - temp_y;
y += (yspeed);
break;
default:
x += (xspeed);
y += (yspeed);
break;
}

rot += spd;

var i = instance_place(x+xspeed+sign(xspeed), y, o_player);
with (i) {	
	switch(other.type) {
	case platform.hor: 
		// pushing horizontally
		x += other.xspeed;
	break;
	case platform.ver:
		// pushing horizontally
		y += other.yspeed;
	break;
	
	default:
	break;
	}
}
