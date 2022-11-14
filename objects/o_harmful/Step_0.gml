/// @description Insert description here
// You can write your code in this editor
if (owner) {
	if (instance_exists(owner)) {
		visible = true;
		x += owner.xspeed;
		y += owner.yspeed;
		sprite_index = sprite;
	}
}