/// @description caca
// You can write your code in this editor
 x = oPlayer.x + 10;
 y = oPlayer.y + 5;

if(oPlayer.controller == 0) {
 image_angle = point_direction(x, y, mouse_x , mouse_y);
}else {
	var controllerh = gamepad_axis_value(0, gp_axisrh); //right analogic horizontal
	var controllerv = gamepad_axis_value(0, gp_axisrv); //right analogic vertical
	if( abs(controllerh) > 0.2 || abs(controllerv) > 0.2) {
		controllerAngle = point_direction(0,0, controllerh, controllerv);
	}
	image_angle = controllerAngle;

}
 
firingDelay -= 1;
recoil = max(0, recoil-1);

if((mouse_check_button(mb_left) || gamepad_button_check(0, gp_shoulderrb)) && firingDelay < 0) {
	firingDelay = 5; 
	recoil = 4;
	ScreenShake(2, 10);
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