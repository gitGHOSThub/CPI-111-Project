var center_x = display_get_width() / 2;
var center_y = display_get_height() / 2; 

// pause state, draw pause menu
if (obj_gamemanager.gamestate == 2){
	
	draw_text(center_x, center_y - 40, "Pause")
	var _exitbtn = draw_button(center_x - 30, center_y - 20, center_x +30, center_y -10, true)
	
}