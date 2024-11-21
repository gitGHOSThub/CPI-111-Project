if (instance_exists(target)) {
    xTo = target.x;
    yTo = target.y;
}

// smooth the camera movements a little
var lerp_speed = 0.1;
x = lerp(x, xTo, lerp_speed);
y = lerp(y, yTo, lerp_speed);

camera_set_view_pos(view_camera[0], x - (camera_get_view_width(view_camera[0]) / 2), y - (camera_get_view_height(view_camera[0]) / 2));