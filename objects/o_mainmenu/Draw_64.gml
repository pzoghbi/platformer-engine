/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_yellow);
var options = array_length_1d(option);
for(var i = 0; i < options; i++) {
	draw_set_halign(fa_center);
	var indicator = ">> ";
	var text = (index == i) ? indicator + option[i] : option[i];
	draw_text(room_width/2, room_height * 3/4 + 24 * i, text);
}
draw_set_color(c_white);