/// @description Insert description here
// You can write your code in this editor
draw_self();
if (state == trap.active) {
	draw_sprite(s_alert, (current_time/10000)%4, x, y - 64);
}