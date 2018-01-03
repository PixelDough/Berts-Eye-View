if input.action {
	if target != noone {
		room = target;
	} else {
		text_box = instance_create_layer(0, 0, "Text", obj_dialogue_box);
		text_box.myText[0] = "It's locked.";
		text_box.myName = "Bert";
		text_box.creator = self;
	}
	input.action = false;
}