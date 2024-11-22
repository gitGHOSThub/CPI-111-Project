// gamestates
// -1: lost
// 0 : in game
// 1 : win
// 2 : pause
// 3 : levelup menu
self.hacks = false
audio_stop_all();
audio_play_sound(bgm_stranded, 10, true)
self.hasBossSpawned = false

itemregistry = [
	obj_shieldmodule, // id: 0
	obj_medkit,
]

function registerItem(_item){
	array_push(itemregistry, _item);
}

function incrementGameTime(){
	if(!isPaused){
		gameTime+= delta_time / 1000000;
	}
}

function levelUp(){
	gamestate = 3
	isPaused = true
	instance_deactivate_all(true)
	instance_activate_object(obj_levelupmanager)
	obj_levelupmanager.initialize_state()
}

function bossPhase(){
	if (self.hasBossSpawned) return;
	self.hasBossSpawned = true
	
	audio_stop_all();
	audio_play_sound(bgm_boss, 10, true)
	instance_create_layer(global.playerX, global.playerY, "Instances", obj_circleindicator, {
		objecttospawn : obj_bossspawner
	})

	instance_destroy(obj_enemyspawner)
}

alarm[1] = room_speed * 60