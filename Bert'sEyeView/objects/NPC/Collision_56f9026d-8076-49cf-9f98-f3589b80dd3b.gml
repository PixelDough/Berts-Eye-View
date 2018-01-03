show_indicator = true;

if input.action and !instance_exists(obj_dialogue_box) {
	textbox(myName, myText)
	input.action = false;
}