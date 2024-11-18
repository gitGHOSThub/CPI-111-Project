

function spawnProj(){

	var projectileobj = instance_create_layer(x,y,"Instances", obj_bullet, {
		direction : shoot_angle
	})
}
function spawnProjj(){

	var _projectileobj = instance_create_layer(x,y,"Instances", obj_bullet_blue_1, {
		direction : shoot_angle
	})
}


// shoot_cd sets firerate
function manageCDs(){
	if (curr_shoot_cd <= 0){
		spawnProj()
		curr_shoot_cd = shoot_cd 
	}
	curr_shoot_cd -= delta_time/ 950000
	
}
function manageCDDs(){
	if (curr_shoot_cd <= 0){
		spawnProjj()
		curr_shoot_cd = shoot_cd 
	}
	curr_shoot_cd -= delta_time/ 1000000
	
}