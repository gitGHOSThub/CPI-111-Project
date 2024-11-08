/// @description Insert description here
// You can write your code in this editor



function spawnProj(){

	var projectileobj = instance_create_layer(x,y,"Instances", obj_bullet, {
		direction : shoot_angle
	})
}


function manageCDs(){
	if (curr_shoot_cd <= 0){
		spawnProj()
		curr_shoot_cd = shoot_cd 
	}
	curr_shoot_cd -= delta_time/ 1000000
	show_debug_message(string(curr_shoot_cd))
	
}