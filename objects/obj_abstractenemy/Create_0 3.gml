/// @description Insert description here
// You can write your code in this editor


speed = 3

//point and move into direction of the player
function update_direction(){
	direction = point_direction(x,y,global.playerX,global.playerY)
	image_angle = direction - 90
}

update_direction()