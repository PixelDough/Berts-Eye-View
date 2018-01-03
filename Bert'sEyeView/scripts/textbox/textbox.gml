///@param name
///@param text

var _text_box = instance_create_layer(0, 0, "Text", obj_dialogue_box);
_text_box.myName = argument0;
_text_box.myText = argument1;
_text_box.creator = self;