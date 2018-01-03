if !instance_exists(obj_dialogue_box) {
	do_physics(true);

	if vx < 0 dir = -1 else if vx > 0 dir = 1;

	if input.left vx = max(vx - spd, -spd_max);
	if input.right vx = min(vx + spd, spd_max);


	if (!input.left and !input.right) or (input.left and input.right) {
		vx *= slip;
	}

	//switch to idle
	if abs(vx) < 0.1 {
		ACTION = player.idle;
	} else {
		ACTION = player.walk;
	}
	
	if !grounded {
		vx *= .85;
	}
} else {
	ACTION = player.idle;
}

event_user(ACTION);

if sprite_index != sprite_index_last {
	image_index = 0;
}

