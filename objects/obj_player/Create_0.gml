// init attributes

event_inherited();
currhealth = maxhealth
self.isVulnerable = true; // for iframes
self.invulnTimer = iframes - 10;
self.shot_projectile = obj_rocket
active_item = 	instance_create_layer(x , y ,"Instances", obj_shieldmodule)

function applydamage(_other){
	if (self.isVulnerable || (_other.object_index == obj_abstractprojectile && _other.ignoreIFrames)){
		show_debug_message("apply damage")
		currhealth -= _other.damage
		self.invulnTimer = iframes - 10;
		self.isVulnerable = false;
		alarm[10] = iframes;
		if (currhealth <= 0) {
			instance_destroy()
			obj_gamemanager.gamestate = -1;
			obj_gamemanager.alarm[0] = 600;
		}
	}
}


function spawnProj(){
	
	instance_create_layer(x + lengthdir_x(30, shoot_angle - 90), y + lengthdir_y(30, shoot_angle - 90),"Instances", self.shot_projectile, {
		direction : shoot_angle
		
	})
	
	instance_create_layer(x + lengthdir_x(30, shoot_angle + 90), y + lengthdir_y(30, shoot_angle + 90),"Instances", self.shot_projectile, {
		direction : shoot_angle,
		life_frames : 3.14
	})
}

function manageShootCDs(){
	if (curr_shoot_cd <= 0){
		spawnProj()
		curr_shoot_cd = shoot_cd 
	}
	curr_shoot_cd -= delta_time/ 1000000
	
}

function manageAbilityCDs(){
	if (curr_shoot_cd <= 0){
		active_item.activate(id)
		curr_ability_cd = active_item.maxcd 
	}
	curr_shoot_cd -= delta_time/ 1000000
	
}


function manageItems(){
	
}

function manageActives(){
	
}

function managePassives(){
}

function levelUp(){
}

function addAttack(_amount){
	atk += _amount
}

function addSpeed(_amount){
	movespeed += _amount
}

function addDefense(_amount){
	defense += _amount
}

function addiframes(_amount){
	iframes += _amount
	self.invulnTimer = iframes;
}