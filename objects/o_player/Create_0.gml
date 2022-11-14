/// @description Insert description here
// You can write your code in this editor
// TODO fix
PLAYER = 0;

life = 3;
coins = 0;

state_phy = GROUND;
state = FIRST;
invincible = false;
start_x = xstart;
start_y = ystart;

entity_move_init_ext(0, 0, .5, -12, 200, 300, 49/50, 1/5, false, false);

image_speed = 0;
alpha = 0;

/* initialize input */
left =	0;
right = 0;
up =	0;
down =	0;
a =		0;
b =		0;