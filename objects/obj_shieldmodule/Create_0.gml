/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

function activate(_player){
	if (is_undefined(_player)) return;
	instance_create_layer(global.playerX,global.playerY, "Instances", obj_shield)
}
