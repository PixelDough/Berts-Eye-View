display_reset(0, true);
global.time = 1;

var fnt = "!\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[]";

global.font_doodle_order = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz:.!?,'"
global.font_doodle_anim = [spr_font_doodle_1, spr_font_doodle_2, spr_font_doodle_3, spr_font_doodle_4];
animate_font(global.font_doodle_anim, 5);

global.font = font_add_sprite_ext(spr_font,fnt,true,1);
draw_set_font(global.font);

global.paused = false;

window_set_size(window_get_width()*3, window_get_height()*3);