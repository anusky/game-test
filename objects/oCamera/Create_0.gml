/// @description Set up camera
cam = view_camera[0];
follow = oPlayer; //id of oldest instance of that object

view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;
xTo = xstart;
yTo = ystart;



/*
* beside are those necessary vars to make ScreenShake effect when shooting
*/

shakeLength = 0;
shakeMagnitude = 0;
shakeRemain = 0;
buff = 32; // this buff tells viewport the necessary pixel distance between viewport and the limits of the screen. In order to avoid that screen shake makes screen limits visible