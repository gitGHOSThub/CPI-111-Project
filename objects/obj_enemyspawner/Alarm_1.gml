/// @description Insert description here
// You can write your code in this editor


// timer for duplicating the spawners. I want them to scale quadratically so here we are
if (random(1) > 0.5){
		var spawn = instance_create_layer(x,y,"Instances", obj_enemyspawner)
		spawn.angle = random(360)
}

alarm[1] = 1200