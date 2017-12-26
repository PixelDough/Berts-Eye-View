show_indicator = true;

if input.u_p and myText[0] != "" and !instance_exists(obj_dialogue_box) {
	text_box = instance_create_layer(0, 0, "Text", obj_dialogue_box);
	text_box.myName = myName;
	text_box.myText = myText;
}