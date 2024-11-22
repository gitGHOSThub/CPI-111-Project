

self.items_list = 
[]; // 3 random choices
self.menu_index = 0;
self.menu_count = 3;
function initialize_state(){
	instance_activate_object(obj_player)

	for (var i = 0; i < self.menu_count; i++){
		
		array_push(self.items_list, instance_create_layer(0, 0, "hud",obj_gamemanager.itemregistry[floor(random(array_length(obj_gamemanager.itemregistry)))]))
	}
}


