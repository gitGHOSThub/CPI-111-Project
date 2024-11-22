

health -= other.damage

// this guy has died
if (health <= 0 ){
	
	// we have to encapsulate the enemy's values since its dead(removed)
	obj_eventmanager.broadcast_event("death.enemy", {other_id: other.id, name: name});
	instance_destroy()
	
}
else{
	obj_eventmanager.broadcast_event("hurt.enemy", {obj_id: id, other_id: other.id});
}
