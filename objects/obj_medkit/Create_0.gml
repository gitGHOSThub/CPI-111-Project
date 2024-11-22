/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();


self.can_regen = true;

function tick(_player, _amt){
	if (is_undefined(_player)) return;
	if (can_regen && (_player.currhealth < _player.maxhealth)){
		_player.currhealth += 0.001 
	}
}

function onPlayerHurt(_player, _other){
	if (obj_gamemanager.gamestate != 0) return;
	self.can_regen = false
	alarm[0] = fps * 10
}