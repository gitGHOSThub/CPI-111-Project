// init attributes

event_inherited();
self.items = ds_map_create();
currhealth = maxhealth
self.isVulnerable = true; // for iframes
self.invulnTimer = iframes - 10;
self.shot_projectile = obj_rocket
global.level = 1;




function applydamage(_other){
	if (obj_gamemanager.gamestate != 0 || (!instance_exists(obj_eventmanager))) return;
	
	with(obj_eventmanager){
		if (!instance_exists(obj_eventmanager) || (!instance_exists(_other))) return;
		onPlayerHurt(self, _other)
	}
	
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
		life_frames : 3.14 // doesn't add anything if its not spinproj so why not
	})
}

function manageShootCDs(){
	if (curr_shoot_cd <= 0){
		spawnProj()
		curr_shoot_cd = shoot_cd 
	}
	
	
}

function manageAbilityCDs(){
	if (!(instance_exists(active_item))) return;
	if (curr_ability_cd <= 0){
		active_item.activate(id)
		curr_ability_cd = active_item.maxcd 
	}
	
	
}


function manageItems(){
	var key = ds_map_find_first(self.items); // Get the first key in the map

	while (key != undefined) {
	    var _amt = ds_map_find_value(self.items, key)
		key.tick(self, _amt)
	    key = ds_map_find_next(self.items, key);
	}
}

function levelUpProgress(){
	return score / (80 * (global.level/2)^1.1)
}
function checkLevelUp() {
	if (score >= (80 * (global.level/2)^1.1))
	{
		score = 0
		global.level++;
		obj_gamemanager.levelUp()
	}
}

function render_abilitybar(){
	if (!instance_exists(active_item)) return
	var cd_percentage = curr_ability_cd / active_item.maxcd;
	
	if (cd_percentage == 1) return
	
	var bar_width = 30;
	var bar_height = 5;
	var bar_x1 = x - bar_width / 2;
	var bar_y1 = y + sprite_height / 2 - bar_height - 5; // render below
	var bar_x2 = bar_x1 + bar_width;
	var bar_y2 = bar_y1 + bar_height;

	
	draw_healthbar(bar_x1, bar_y1, bar_x2, bar_y2, cd_percentage * 100, c_black, c_blue, c_blue, 0, false, true)
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

function mulAttack(_amount){
	atk *= _amount
}

function mulSpeed(_amount){
	movespeed *= _amount
}

function mulDefense(_amount){
	defense *= _amount
}

function mulFireRate(_amount){
	shoot_cd *= _amount
}

function addiframes(_amount){
	iframes += _amount
	self.invulnTimer = iframes;
}

function hasActiveItem(){
	return (instance_exists(active_item))
}

function addPassiveItem(_item){
	itemscount++
	if (ds_map_exists(self.items, _item.id)){
		
	}
	else{
		ds_map_add(self.items, _item.id, 0)  
	}
	
}