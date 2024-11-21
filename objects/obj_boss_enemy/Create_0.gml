/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
speed = 0
self.phase = 1


// spinning attack 
function pattern1(){
	self.pattern1backwards = false;
	alarm[0] = 60
}

// shoots in 4 directions
function shoot1(){
	for (var i = 0; i < 360; i += 60){
			instance_create_layer(x, y,"Instances", obj_bossphase1projectile, {
			direction : direction + i
		
		})
	}
}

function shoot2(_rangefrom, _rangeto){
	for (var i = 0; i < random(_rangeto) + _rangefrom; i ++){
		direction = random(360)
		self.magnitude = random(600)
		instance_create_layer(x + lengthdir_x(self.magnitude, direction), y + lengthdir_y(self.magnitude, direction),"Instances", obj_circleindicator, {
			direction : direction + i,
			objecttospawn : obj_projringspawner
		})
	}
}

pattern1()