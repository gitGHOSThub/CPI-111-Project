incrementGameTime()

if (keyboard_check(vk_escape) ){
	gamestate = 2
	isPaused = true
	instance_deactivate_all(true)
	instance_activate_object(obj_pausemanager)
}

// h for hacks
if (keyboard_check(ord("H") ) ){
	self.hacks = !self.hacks
	if (self.hacks){
		obj_player.atk = 500 * self.hacks
		obj_player.defense = 100000 * self.hacks
		show_debug_message("Hacks mode enabled")
	}
	else{
		show_debug_message("Hacks mode disabled")
	}
}

// b for boss
if (keyboard_check(ord("B") ) ){
	bossPhase()
}

if (gamestate == -1){
	instance_deactivate_all(true)
}

