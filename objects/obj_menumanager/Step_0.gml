
if (keyboard_check_pressed(vk_up)) {
    self.menu_index = (self.menu_index - 1 + self.menu_count) % self.menu_count;
}
if (keyboard_check_pressed(vk_down)) {
    self.menu_index = (self.menu_index + 1) % self.menu_count;
}


if (keyboard_check_pressed(vk_enter)) {
    switch (self.menu_index) {
        case 0:
            room_goto(Ingame); 
            break;
        case 1:

            break;
        case 2:
            game_end(); 
            break;
    }
}