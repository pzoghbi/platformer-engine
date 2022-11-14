/// @description Hurt player
// @arg Amount of damage
var damage = argument0;
if !(invincible) {
	sound(a_hurt);
	life -= damage;
	invincible = true;
	alarm[0] = game_get_speed(gamespeed_fps);
}