/// @description Set up camera
cam = view_camera[0];
follow = oPlayer; //id of oldest instance of that object

view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;
xTo = xstart;
yTo = ystart;

