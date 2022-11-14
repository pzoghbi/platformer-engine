if !place_meeting(x, y+ymove, o_solid) 
{ 
	y += ymove; 
}

if !place_meeting(x, y+yspeed, o_solid) 
{ 
	y += yspeed; 
}