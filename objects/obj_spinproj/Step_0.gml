/// @description Insert description here
// You can write your code in this editor
event_inherited();
speed = 8

life_frames += frequency;

var perp_direction = direction - 90;


var side_movement = cos(life_frames) * amplitude;

// Move the projectile
x += lengthdir_x(speed, direction) + lengthdir_x(side_movement, perp_direction);
y += lengthdir_y(speed, direction) + lengthdir_y(side_movement, perp_direction);