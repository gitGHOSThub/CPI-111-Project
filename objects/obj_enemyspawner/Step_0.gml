
if (instance_exists(obj_player)){
	self.center_x = obj_player.x
	self.center_y = obj_player.y
}
else{
}

angle += orbit_speed;

if (angle >= 360) {
    angle -= 360; // loop
}

x = self.center_x + orbit_radius * cos(degtorad(angle)); 
y = self.center_y + orbit_radius * sin(degtorad(angle)); 