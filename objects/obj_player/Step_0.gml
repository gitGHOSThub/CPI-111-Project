/// @description Insert description here
// You can write your code in this editor


shoot_angle = point_direction(x,y,mouse_x,mouse_y)


// preload keyboard state so we don't have to recheck later
var up = keyboard_check(ord("W"))
var down = keyboard_check(ord("S"))
var right = keyboard_check(ord("D"))
var left = keyboard_check(ord("A"))
var shoot = mouse_check_button(1)


var walkSpeed = baseWalkSpeed * walkSpeedModifier * delta_time/ 1000000

xVel = (right-left) * walkSpeed
yVel = (down-up) * walkSpeed

if (shoot){
	 manageCDs()
}

x += xVel
y += yVel
