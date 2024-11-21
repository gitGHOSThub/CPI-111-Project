// init attributes
health = maxhealth


function spawnProj(){

	var projectileobj = instance_create_layer(x,y,"Instances", obj_spinproj, {
		direction : shoot_angle
	})
}



// shoot_cd sets firerate
function manageShootCDs(){
	if (curr_shoot_cd <= 0){
		spawnProj()
		curr_shoot_cd = shoot_cd 
	}
	curr_shoot_cd -= delta_time/ 950000
	
}

function manageAbilityCDs(){
	if (curr_shoot_cd <= 0){
		spawnProj()
		curr_ability_cd = shoot_cd 
	}
	curr_shoot_cd -= delta_time/ 950000
	
}


function manageItems(){
	
}

function manageActives(){
	
}

function managePassives(){
}