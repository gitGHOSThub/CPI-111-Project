self.menu_options = ["Start Game", "Settings", "Quit"];
self.menu_index = 0;
self.menu_count = array_length(menu_options);

audio_stop_all();
audio_master_gain(4);
audio_play_sound(bgm_title, 10, true)