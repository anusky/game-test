/// @description every fps
vsp = vsp+grv;

var onTheFloor = place_meeting(x, y+1, oWall);



// Player Horizontal Collision
if (place_meeting(x+hsp, y, oWall)){
	while(!place_meeting(x+sign(hsp), y, oWall)) {
		x += sign(hsp)
	}
	hsp = -hsp;
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


/*
* Animation section
*/
if(!onTheFloor) {
	sprite_index = sEnemyA;  //tells which sprite in index terms we are using
	image_speed = 0; //to not automatically change Sprite position - avoid animate
	if(sign(vsp) > 0) {
		//means we are moving down
		image_index = 1; //tells which image index for the sprite we are using
	} else{
		image_index = 0;
	}
	//another way to correctly write an if statement 
	//if(sign(vsp) > 0) image_index = 0; image_index = 1  
}
else {
	image_speed = 1;
	if(hsp == 0) sprite_index = sEnemy; else sprite_index = sEnemyR; 
	// if(sign(hsp) > 0) image_xscale = 1; else image_xscale = -1;
	if(hsp != 0) image_xscale = sign(hsp); //same as last line
}