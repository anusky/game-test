/// @description Insert description here
// You can write your code in this editor
 x = oPlayer.x + 10;
 y = oPlayer.y + 10;
 

	var haxis = gamepad_axis_value(0, gp_axislh);
	var vaxis = gamepad_axis_value(0, gp_axislv);
	direction = point_direction(0, 0, haxis, vaxis);

 image_angle = point_direction(x, y, mouse_x , mouse_y);
 //image_angle = direction