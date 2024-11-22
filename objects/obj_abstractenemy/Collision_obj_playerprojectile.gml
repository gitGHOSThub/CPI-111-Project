
if (obj_gamemanager.gamestate != 0) return;
currhealth -= other.damage

// this guy has died
if (currhealth <= 0 ){
	
	instance_destroy()
	score += scoreval

	if (instance_exists(obj_player)) obj_player.checkLevelUp() 
	
}
else{
	
}
