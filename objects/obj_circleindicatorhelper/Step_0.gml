/// @description Insert description here
// You can write your code in this editor


var scale = lerp(0, 1,time_left/self.original_time_left)

image_xscale = scale
image_yscale = scale
time_left --;

if (time_left <= 0 ){
	instance_destroy()
}