if (gamestate == 0){
	var time_string =  string_format(gameTime /60 ,2, 0)  + ":" + string_format(gameTime % 60, 2, 0)
	time_string = string_replace_all(time_string, " ", "0")
	
	draw_set_color(c_white); 
	draw_set_halign(fa_left)
	draw_text(100 ,70, "Score: " + string(score))
	draw_text(100,100, "Health: " +  string(obj_player.currhealth) + "/" + string(obj_player.maxhealth))
	draw_text(100,130, "Game Time: " + time_string)
	
}
else if (gamestate == -1){
	draw_text(display_get_width()/4, display_get_height()/4 - 10, "Game over!")
	draw_text(display_get_width()/4, display_get_height()/4 + 10, "Score: " + string(score))
}