/// @param number

var _number = argument0;

d[0,0] = "Oh, hey Bert.";
d[0,1] = "Wonderful weather we're having, huh?";
d[0,2] = "It might even rain soon, if we're lucky.";
d[0,3] = "If only I had a garden...";

d[1,0] = "I live in this apartment. It's nice.";
d[1,1] = "My room is on the second floor, if you wanted to visit.";

var _line = [];
for (var _i = 0; _i < array_length_2d(d, _number); _i++) {
	_line[_i] = d[_number,_i]
}

return(_line);