/// @description Insert description here
// You can write your code in this editor
for (var i = 0; i < 360; i += 10){
		instance_create_layer(x, y,"Instances", projectile, {
		direction : direction + i,
		ignoreIFrames : true
	})
}