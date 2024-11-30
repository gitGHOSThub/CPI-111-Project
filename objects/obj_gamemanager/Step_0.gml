
if (keyboard_check(vk_escape) ){
	obj_gamemanager.gamestate = 2
}
if (obj_gamemanager.gamestate = -1) {
	game_end()
}

view_camera[0].x = obj_player.x
view_camera[0].y = obj_player.y