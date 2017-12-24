draw_set_font(global.font_doodle);

draw_set_color(c_red);
draw_text(10,10,"Red text!");
draw_set_color(c_blue);
draw_text(10,28,"Blue text...");
draw_set_color(c_aqua);
draw_text(10,46,"Aqua text?");

draw_sprite_ext(sprite_index, image_index, x, y, dir, 1, 0, c_white, 100);

sprite_index_last = sprite_index;