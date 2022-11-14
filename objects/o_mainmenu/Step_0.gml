/// @description Insert description here
// You can write your code in this editor

index += (o_input.down - o_input.up);
var options = array_length_1d(option);
index = clamp(index, 0, options-1);

if (o_input.confirm) {
	switch(index) {
	case 0:
		room_goto(stage1);
	break;
	case 1:
		
	break;
	case 2:
		
	break;
	case 3:
		
	break;
	default:
	break;
	}	
}
