/// @description Handle player death
image_angle += 2 * CYCLE * delta_seconds();
image_xscale -= image_xscale * SXTH;
image_yscale = image_xscale;

xspeed = 0; 
yspeed = 0;
xmove = 0;
ymove = 0;

o_controller.trigger_restart = true;
if (image_yscale <= 0.02)
{
	instance_destroy();
}