display_reset(0, true);
global.time = 1;

global.font_string = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz:.!?,'\"";

global.font_doodle_anim = [spr_font_doodle_1, spr_font_doodle_2, spr_font_doodle_3, spr_font_doodle_4];
animate_font(global.font_doodle_anim, 5);

global.paused = false;

window_set_size(window_get_width()*3, window_get_height()*3);