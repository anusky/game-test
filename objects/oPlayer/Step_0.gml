/*
* @description this is the oPlayer movement
*/



 
#region //Get Player Input
// keyLeft = keyboard_check(vk_left) || keyboard_check(ord("A")) || gamepad_button_value(0, gp_padl);
// keyRight = keyboard_check(vk_right) || keyboard_check(ord("D")) || gamepad_button_value(0, gp_padr);
// keyJump = keyboard_check_pressed(vk_space) || keyboard_check(ord("W")) || gamepad_button_value(0, gp_face1);

if(hascontrol) {

	keyLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
	keyRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
	keyJump = keyboard_check_pressed(vk_space) || keyboard_check(ord("W"));
	if(keyLeft || keyRight || keyJump) {
	controller = 0;
	}

	if( abs( gamepad_axis_value(0, gp_axislh)) > 0.2  ) {
		keyLeft = abs(min(gamepad_axis_value(0, gp_axislh), 0));
		keyRight = max(gamepad_axis_value(0, gp_axislh), 0);
		controller = 1;
	}

	if(gamepad_button_check_pressed(0, gp_face1)) {
		keyJump = 1;
		controller = 1;
	}

}
else {
	keyRight = 0
	keyLeft = 0
	keyJump = 0
}

#endregion

#region //Calculate Player Movement


var move = keyRight - keyLeft;

hsp = move * walkspd;

vsp = vsp+grv;

var onTheFloor = place_meeting(x, y+1, oWall);

if(onTheFloor) && (keyJump) {
	vsp = -7;
}
#endregion

#region // Player Horizontal Collision
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
		y += sign(vsp);
	}
	vsp = 0;
}

y += vsp;

#endregion

#region //Animation section
if(!onTheFloor) {
	sprite_index = sPlayerA;  //tells which sprite in index terms we are using

	image_speed = 0; //to not automatically change Sprite position - avoid animate
	if(sign(vsp) > 0) {
		//means we are moving down
		//image_index = 1; //tells which image index for the sprite we are using
		image_speed = 1;
	} else{
		//image_index = 0;
		image_speed = 0;
	}
	//another way to correctly write an if statement 
	//if(sign(vsp) > 0) image_index = 0; image_index = 1  
}
else {
	image_speed = 1;
	if(hsp == 0) sprite_index = sPlayer; else sprite_index = sPlayerR; 
	// if(sign(hsp) > 0) image_xscale = 1; else image_xscale = -1;
	if(hsp != 0) image_xscale = sign(hsp); //same as last line
}

#endregion