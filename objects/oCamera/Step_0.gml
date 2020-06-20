/// @description Update camera

//Update Destination
if(instance_exists(follow)) {
	xTo = follow.x;
	yTo = follow.y;
} 

//Update obejct position
x += (xTo - x) / 25;
y += (yTo - y) / 25;


x = clamp(x, view_w_half + buff, room_width - view_w_half - buff);
y = clamp(y, view_h_half + buff , room_height - view_h_half - buff);

/*
* ScreenShake region
*/
x += random_range(-shakeRemain, shakeRemain);
y += random_range(-shakeRemain, shakeRemain);
shakeRemain = max(0, shakeRemain - ( (1/shakeLength)*shakeMagnitude));


// Update camera view
camera_set_view_pos(cam, x - view_w_half, y - view_h_half); //center player on the viewport