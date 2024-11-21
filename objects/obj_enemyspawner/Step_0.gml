var center_x = obj_player.x
var center_y = obj_player.y

angle += orbit_speed;

if (angle >= 360) {
    angle -= 360; // loop
}

x = center_x + orbit_radius * cos(degtorad(angle)); 
y = center_y + orbit_radius * sin(degtorad(angle)); 