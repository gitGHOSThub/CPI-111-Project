// pause state, draw pause menu
if (obj_gamemanager.gamestate == 3){
	draw_set_color(make_color_rgb(0, 0, 0)); 
	draw_set_alpha(0.5);
	
    draw_rectangle(0, 0, display_get_width(), display_get_height(), false);
	
	draw_set_alpha(1);
	var gui_width = display_get_gui_width();
	var gui_height = display_get_gui_height();
	var menu_x = gui_width / 2 + 100; // idk why its offset
	var menu_y = gui_height / 2;
	var x_spacing = 300;

	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	for (var i = 0; i < self.menu_count; i++) {
		
	    var color = (i == self.menu_index) ? c_yellow : c_white;
		draw_sprite(self.items_list[i].menudisplaysprite,-1,  menu_x + (i - self.menu_count/2) * x_spacing ,menu_y - 70);
	    draw_text_color(menu_x + (i - self.menu_count/2) * x_spacing ,menu_y, self.items_list[i].itemname, color, color, color, color, 1);
		draw_text_color(menu_x + (i - self.menu_count/2) * x_spacing ,menu_y + 70, self.items_list[i].desc, color, color, color, color, 1);
	}
}