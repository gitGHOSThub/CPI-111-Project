/// @description boss phase 2 pattern. telegraphed slow 1 shot flower attacks



if (currhealth <= 1*maxhealth/3){
	is_invulnerable = true;
	alarm[2] = 180
}
else{
	is_invulnerable = false;
	shoot2(2,4)
	alarm[1] = 40
}