/// @description Insert description here
// You can write your code in this editor


if (self.invulnTimer >= 0){
	self.invulnTimer --;
	if (self.invulnTimer/2 % 4 == 0){ // alternate every 10 frames
		draw_self()
	}
}
else{
	draw_self()
}

render_healthbar()
render_abilitybar()