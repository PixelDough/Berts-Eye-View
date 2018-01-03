display_set_gui_size(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]));

draw_self();

//draw_rectangle(x+16, y+18, x+18+40, y+18+40, c_white);

//draw_sprite(spr_bert_idle, image_index, x+16+22, y+16+42)

draw_set_font(global.font_doodle);
//draw_set_color(c_red);
//draw_text(x+10+48+16, y+12,"Red text!");
//draw_set_color(c_blue);
//draw_text(x+10+48+16, y+30,"Blue text...");
//draw_set_color(c_black);
//draw_text(x+10+48+16, y+48,"Aqua text?");

draw_set_color(c_black);

draw_text_ext(x+xOff, y+yOff, print, 17, 348);

draw_set_halign(fa_center);
draw_text(x+105, 13, myName);
draw_set_halign(fa_left);

var _line = "\"" + myText[part] + "\"";
if floor(char) == string_length(_line) {
	draw_sprite(spr_dialogue_finished, image_index, bbox_right-14, bbox_bottom-10);
}