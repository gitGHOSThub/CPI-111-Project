var center_x = display_get_width()/4;
var center_y = display_get_height()/4;

angle += orbit_speed;

if (angle >= 360) {
    angle -= 360; // loop
}

x = center_x + orbit_radius * cos(degtorad(angle)); 
y = center_y + orbit_radius * sin(degtorad(angle)); 