// Vertical navigation
if (keyboard_check_pressed(vk_up)) {
    self.menu_index = (self.menu_index - 1 + self.menu_count) % self.menu_count;
}
if (keyboard_check_pressed(vk_down)) {
    self.menu_index = (self.menu_index + 1) % self.menu_count;
}

// Selection
if (keyboard_check_pressed(vk_enter)) {
    switch (self.menu_index) {
        case 0:
            room_goto(Ingame); // Go to game room
            break;
        case 1:
            // Open settings
            break;
        case 2:
            game_end(); // Quit game
            break;
    }
}