/// @description Insert description here
// You can write your code in this editor
 x = oPlayer.x + 10;
 y = oPlayer.y + 10;
 

	var haxis = gamepad_axis_value(0, gp_axislh);
	var vaxis = gamepad_axis_value(0, gp_axislv);
	//direction = point_direction(0, 0, haxis, vaxis);

 image_angle = point_direction(x, y, mouse_x , mouse_y);
 //image_angle = direction
 
firingDelay -= 1;
recoil = max(0, recoil-1);

if(mouse_check_button(mb_left) && firingDelay < 0) {
	firingDelay = 5;
	recoil = 4;
/*	with (oPlayer) {
		// this would apply what we do here to this object isntanced (oPlayer)
	}*/
	with(instance_create_layer(x, y, "Bullets", oBullet)){
		//in this case we are creating a new instance type existing on room called Bullets of type oBullet
		speed = 25;
		//direction = other.image_angle; //in this case other refers to parent object, in this case oWeapon
		direction = other.image_angle + random_range(-3, 3);
		//we are maing bullet go in the same direction that weapon is pointint to
		image_angle = direction;
	}
}

x = x - lengthdir_x(recoil, image_angle);
y = y - lengthdir_y(recoil, image_angle);

if(image_angle > 90 && image_angle < 270) {
	//we are facing somewhere to the left 
	image_yscale = -1;
} else {
	image_yscale = 1;
}