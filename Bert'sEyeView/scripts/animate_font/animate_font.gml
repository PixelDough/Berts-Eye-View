/// @param FontArray
/// @param speed

var _fontArray = argument0;
var _speed = argument1;

return(font_add_sprite_ext(_fontArray[((global.time/_speed)%(array_length_1d(_fontArray)))],global.font_string,false,1));