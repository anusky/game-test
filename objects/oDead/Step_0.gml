/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
/// @description every fps
if(done == 0) {
	vsp = vsp+grv;

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
		if(vsp > 0) {
			done = 1;
			image_index = 1;
		}
		while(!place_meeting(x, y+sign(vsp), oWall)) {
			y += sign(vsp);
		}
		vsp = 0;
	}

	y += vsp;


}


