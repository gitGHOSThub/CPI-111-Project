// gamestates
// -1: lost
// 0 : in game
// 1 : win
// 2 : pause/ levelup menu
self.hacks = false
function incrementGameTime(){
	if(!isPaused){
		gameTime+= delta_time / 1000000;
	}
}

function bossPhase(){

	instance_create_layer(global.playerX, global.playerY, "Instances", obj_circleindicator, {
		objecttospawn : obj_bossspawner
	})

	instance_destroy(obj_enemyspawner)
}

alarm[1] = room_speed * 60