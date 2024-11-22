if (gamestate == 0){
	var time_string =  string_format(floor(gameTime)/60 ,2, 0)  + ":" + string_format(floor(gameTime) % 60, 2, 0)
	time_string = string_replace_all(time_string, " ", "0")
	
	if (!instance_exists(obj_player)) return;
	
	draw_set_color(c_white); 
	draw_set_halign(fa_left)
	draw_set_alpha(1);
	draw_text(100 ,70, "Level: " + string(global.level))
	draw_text(100,100, "Health: " +  string(obj_player.currhealth) + "/" + string(obj_player.maxhealth))
	draw_text(100,130, "Game Time: " + time_string)
	draw_text(100,160, "Progress to next level ")
	draw_healthbar(100, 180, 200, 200, obj_player.levelUpProgress() * 100, c_dkgray, c_yellow, c_yellow, 0, true, true)
	
	
	var drawRightXOffset = camera_get_view_width(view_camera[0]) -100
	var drawRightYOffset = 100
	
	// draw other side ui
	
	// ui totally not stolen from isaac where would you get that idea
	
	// display active
	draw_set_halign(fa_right)
	if (obj_player.hasActiveItem()) {
		draw_text(drawRightXOffset,drawRightYOffset, "Current active item: \n" + obj_player.active_item.itemname)
		draw_sprite(obj_player.active_item.menudisplaysprite, -1,drawRightXOffset, drawRightYOffset)
	} 
	
	// display passive items if u have any
	if (obj_player.itemscount > 0) {

		var itemsMarginX = 20
		var itemsMarginY = 20
		var itemsPerRow = 4
	
		var i = 0;
		var key = ds_map_find_first(obj_player.items); // Get the first key in the map

		while (key != undefined) {
			draw_sprite(key.menudisplaysprite, -1, drawRightXOffset + (i % itemsPerRow) * itemsMarginX, drawRightYOffset + 120 + floor(i / itemsPerRow) * itemsMarginY)
		    key = ds_map_find_next(obj_player.items, key);
			i++;
		}
	}
}
else if (gamestate == -1){
	draw_text((camera_get_view_width(view_camera[0]) / 2), (camera_get_view_height(view_camera[0]) / 2) - 10, "Game over!")
	draw_text((camera_get_view_width(view_camera[0]) / 2), (camera_get_view_height(view_camera[0]) / 2) + 10, "You were level: " + string(global.level))
}