if input.action {
	if array_length_1d(global.orders) != 0 {
		room = sandwichMake;
	} else {
		text_box = instance_create_layer(0, 0, "Text", obj_dialogue_box);
		text_box.myText[0] = "I don't have any orders to fill.";
		text_box.myName = "Bert";
		text_box.creator = self;
	}
	input.action = false;
}