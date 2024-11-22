/// @description boss phase 1 pattern. just spins around in place fast

direction += 5 * -(self.pattern1backwards*2-1) // make it be -1 for true 1 for false

// make it alternate spin directions at a point to make this not braindead at least
if (direction >= 180 || direction <= 0){
	pattern1backwards = !pattern1backwards
}

if (currhealth <= 2*maxhealth/3){
	is_invulnerable = true;
	alarm[1] = 180
}
else{
	is_invulnerable = false;
	shoot1()
	alarm[0] = 10
}