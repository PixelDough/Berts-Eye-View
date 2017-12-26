var _line = "\"" + myText[part] + "\"";

if char < string_length(_line) and floor(string_length(print_string)) < floor(char) {
	print_string += string_char_at(_line, char+1);
	audio_play_sound(snd_voice1, 10, false);
}

if char < string_length(_line) {
	char+= 0.5;
}

if input.any {
	if part+1 == array_length_1d(myText) {
		instance_destroy();
		input.u_p = false;
	} else {
		part+=1;
	}
	char = 0;
	print_string = "";
}