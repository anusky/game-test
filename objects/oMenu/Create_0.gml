/// @description GUI/Vars/Menu Setup

#macro SAVEFILE "Save.sav" //Is like a js constant / global const


guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();
guiMargin = 32;
 
menuX = guiWidth + 200;
menuY = guiHeight - guiMargin;
menuXTarget = guiWidth - guiMargin;
menuSpeed = 25; //lower is faster
menuFont = fMenu;
menuItemHeight = font_get_size(menuFont);
menuCommitted = -1; 
menuControl = true;

menu[2] = "New Game";
menu[1] = "Continue";
menu[0] = "Quit";


menuItems = array_length_1d(menu);
menuCursor = 2;

