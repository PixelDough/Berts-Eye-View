if !instance_exists(obj_dialogue_box) {
	show_indicator = true;

	if input.action_one_pressed {
		instance_create_depth(0, 0, -10000, obj_dialogue_box);
	}
}