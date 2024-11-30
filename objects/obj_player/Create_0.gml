// init attributes
health = maxhealth
self.isVulnerable = true; // for iframes

if (health <= 0) {
	instance_destroy()
	game_end()
	obj_gamemanager.gamestate = -1;
}

function applydamage(_other){
	if (self.isVulnerable){
		health -= _other.damage
		self.isVulnerable = false;
		alarm[10] = iframes;
		if (health <= 0) {
			instance_destroy()
			game_end()
			obj_gamemanager.gamestate = -1;

		}
	}
}

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

function levelUp(){
}