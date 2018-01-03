var _line = "\"" + myText[part] + "\"";

var act = keyboard_check_pressed(global.action);

if char <= string_length(_line) and floor(string_length(print)) < floor(char) {
	print = string_copy(_line, 0, char);
	audio_play_sound(snd_voice1, 10, false);
}

if char <= string_length(_line) {
	if string_char_at(_line, char+spd) == "." {
		char += spd/5;
	} else {
		char += spd;
	}
}

if round(char) == string_length(_line) char = string_length(_line); 

if input.action {
	if floor(char) == string_length(_line) {
		if part+1 >= array_length_1d(myText) {
			instance_destroy();
		} else {
			part+=1;
			char = 0;
			print = "";
		}
		input.action = false
	} else {
		char = string_length(_line); 
	}
}