/// @description Draw Menu

draw_set_font(fMenu);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);


for(var i = 0; i < menuItems; i++)
{
	var color
	var offset = 2;
	var txt = menu[i];
	if(menuCursor == i) {
		txt = string_insert("> ", txt, 0);
		color = c_white;	
	} else {
		 color = c_gray;
	}
	
	var xx = menuX;
	var yy = menuY - (menuItemHeight * (i * 1.5));
	//These lines draw border text line
	draw_set_color(c_black);	
	draw_text(xx - offset, yy, txt);
	draw_text(xx + offset, yy, txt);
	draw_text(xx, yy + offset, txt);
	draw_text(xx, yy - offset, txt);
	//End of border text line
	
	draw_set_color(color);
	draw_text(xx, yy, txt);
}