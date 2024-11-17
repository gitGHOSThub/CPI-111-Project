// Initializing Camera Movement
camera_width = 640
camera_height = 360
camera = view_camera[0]

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
	
}