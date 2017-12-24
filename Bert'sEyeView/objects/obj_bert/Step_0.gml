do_physics(true);

if vx < 0 dir = -1 else if vx > 0 dir = 1;

if input.l vx = max(vx - spd, -spd_max);
if input.r vx = min(vx + spd, spd_max);


if (!input.l and !input.r) or (input.l and input.r) {
	vx *= slip;
}

//switch to idle
if abs(vx) < 0.1 {
	ACTION = player.idle;
} else {
	ACTION = player.walk;
}


if input.action_one_pressed and grounded {
	vy = -jh;
}
	
if !grounded {
	vx *= .85;
}

event_user(ACTION);

if sprite_index != sprite_index_last {
	image_index = 0;
}

