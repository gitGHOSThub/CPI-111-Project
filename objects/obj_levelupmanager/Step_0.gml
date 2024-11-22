if (keyboard_check_pressed(vk_left) ) {
    self.menu_index = (self.menu_index - 1 + self.menu_count) % self.menu_count;
}
if (keyboard_check_pressed(vk_right)) {
    self.menu_index = (self.menu_index + 1) % self.menu_count;
}

// item has been selected
if (keyboard_check_pressed(vk_enter) && obj_gamemanager.gamestate == 3) {
	if (!instance_exists(obj_player)) return;
	var item = instance_create_layer(0, 0, "Items", self.items_list[self.menu_index].object_index)
	item.onPickup(obj_player)
	
	// give player the item
	if (item.isActive){
		obj_player.active_item = item
	}
	else{
		obj_player.addPassiveItem(item)
	}
	
	// clear item choices
	for (var i = 0; i < array_length(self.items_list); i++) {
		instance_destroy(self.items_list[i])
		
	}
	self.items_list = []
	
	// reinitialize game state
	instance_activate_all()
	obj_gamemanager.gamestate = 0
	obj_gamemanager.isPaused = false
}