incrementGameTime()

if (keyboard_check_pressed(vk_escape) ){
	if (gamestate != 0) return;
	gamestate = 2
	isPaused = true
	instance_deactivate_all(true)
	instance_activate_object(obj_pausemanager)
}

// h for hacks
if (keyboard_check_pressed(ord("H") ) ){
	self.hacks = !self.hacks
	if (self.hacks && instance_exists(obj_player)){
		obj_player.atk = 500 * self.hacks
		obj_player.defense = 100000 * self.hacks
		show_debug_message("Hacks mode enabled")
	}
	else{
		show_debug_message("Hacks mode disabled")
	}
}

// b for boss
if (keyboard_check_pressed(ord("B") ) ){
	bossPhase()
}

//l for levelup
if (keyboard_check_pressed(ord("L") ) ){
	levelUp()
}

if (gamestate == -1){
	instance_deactivate_all(true)
}

