/*
* @description this is the oPlayer movement
*/

// Player Input
keyLeft = keyboard_check(vk_left)
keyRight = keyboard_check(vk_right)
keyJump = keyboard_check_pressed(vk_space)

// Player movement 

var move = keyRight - keyLeft;

hsp = move * walkspd;

vsp = vsp+grv

if(place_meeting(x, y+1, oWall)) && (keyJump) {
	vsp = -7;
}


// Player Horizontal Collision
if (place_meeting(x+hsp, y, oWall)){
	while(!place_meeting(x+sign(hsp), y, oWall)) {
		x += sign(hsp)
	}
	hsp = 0;
}

x += hsp;


// Player Vertical Collision
if (place_meeting(x, y+vsp, oWall)){
	while(!place_meeting(x, y+sign(vsp), oWall)) {
		y += sign(vsp)
	}
	vsp = 0;
}

y += vsp;




 