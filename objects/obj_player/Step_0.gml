/// @description Insert description here
// You can write your code in this editor

//point ship to mouse cursor

if (obj_gamemanager.gamestate == 0){
	shoot_angle = point_direction(x,y,mouse_x,mouse_y)
	image_angle = shoot_angle - 90

	global.playerX = x
	global.playerY = y

// preload keyboard state so we don't have to recheck later
	var up = keyboard_check(ord("W")) || keyboard_check(vk_up);
	var down = keyboard_check(ord("S")) || keyboard_check(vk_down);
	var right = keyboard_check(ord("D")) || keyboard_check(vk_right);
	var left = keyboard_check(ord("A")) || keyboard_check(vk_left);
	var shoot = mouse_check_button(1) || keyboard_check(vk_space);
	var useActive = mouse_check_button(2) || keyboard_check(vk_control);


	// pixels/second
	var walkSpeed = baseWalkSpeed * walkSpeedModifier * delta_time/ 1000000

	xVel = (right-left) * walkSpeed
	yVel = (down-up) * walkSpeed

	if (shoot){
		 manageShootCDs()
	}
	if (useActive){
		 manageAbilityCDs()
	}
	
	manageItems()
	
	curr_shoot_cd -= delta_time/ 1000000
	curr_ability_cd -= delta_time/ 1000000


	x += xVel
	y += yVel
}