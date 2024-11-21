/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

damage = max(damage * (1 - obj_player.defense/100), 0) // each defense point is 1% more damage reduction