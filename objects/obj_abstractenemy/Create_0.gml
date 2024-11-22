/// @description Insert description here
// You can write your code in this editor
if (obj_gamemanager.gamestate != 0) return;
event_inherited();
function update_direction(){
	direction = point_direction(x,y,global.playerX,global.playerY)
	image_angle = direction - 90
}
currhealth = maxhealth

speed = 3

