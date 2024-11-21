// pause state, draw pause menu
if (obj_gamemanager.gamestate == 2){
	draw_set_color(make_color_rgb(0, 0, 0)); 
	draw_set_alpha(0.5);
	
    draw_rectangle(0, 0, display_get_width(), display_get_height(), false);
	var gui_width = display_get_gui_width();
	var gui_height = display_get_gui_height();
	var menu_x = gui_width / 2;
	var menu_y = gui_height / 2;
	var y_spacing = 64;

	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	for (var i = 0; i < self.menu_count; i++) {
	    var color = (i == self.menu_index) ? c_yellow : c_white;
	    draw_text_color(menu_x, menu_y + (i - self.menu_count/2) * y_spacing, self.menu_options[i], color, color, color, color, 1);
	}
	
	// draw overlay

	
}