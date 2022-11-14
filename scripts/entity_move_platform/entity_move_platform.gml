/// @description moving with the platforms
var moving_platform;
moving_platform = instance_place(x, y+abs(yspeed)+1, o_platform); 
	
// if standing on the platform
if (moving_platform) {
	var xforce, yforce;
	xforce = moving_platform.xspeed;
	yforce = moving_platform.yspeed;
		
	if !place_meeting(x+xforce, y, o_solid) {
		x += xforce;
	}
	if !place_meeting(x, y+yforce, o_solid) {
		y += yforce;
	}
}