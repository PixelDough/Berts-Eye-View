if instance_exists(obj_player) {
	x = obj_player.x - camera_get_view_width(view_camera[0]) / 2;
	y = 0;
}

camera_set_view_pos(view_camera[0], x, y);