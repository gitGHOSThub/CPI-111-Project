var up = keyboard_check(vk_up);
var down = keyboard_check(vk_down);
var right = keyboard_check(vk_right);
var left = keyboard_check(vk_left);
var attack = keyboard_check(vk_space);

xVelocity = (right - left) * walkSpeed;
yVelocity = (down - up) * walkSpeed;

x += xVelocity;
y += yVelocity;

// walkspeed, xvelocity, and yvelocity are set creation variables
