display_reset(0, true);
global.time = 1;

global.font_string = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz:.!?,'\"";

global.font_doodle_anim = [spr_font_doodle_1, spr_font_doodle_2, spr_font_doodle_3, spr_font_doodle_4];
global.font_doodle = animate_font(global.font_doodle_anim, 5);

window_set_size(window_get_width()*3, window_get_height()*3);

audio_play_sound(snd_TV_River, 100, true);

if room == parent {
	room_goto_next();
}

global.room_past = noone;

global.orders = []


// INPUT
global.right = vk_right;
global.left = vk_left;
global.up = vk_up;
global.down = vk_down;

global.action = ord("Z");

global.pause = vk_enter;


//////////////MENU STUFF///////////////
global.view_width = camera_get_view_width(view_camera[0]);
global.view_height = camera_get_view_height(view_camera[0]);

display_set_gui_size(global.view_width, global.view_height);