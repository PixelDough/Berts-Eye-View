///@description MUST HAVE CENTER X ORIGIN

draw_self();

if instance_exists(obj_player) and collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_player, false, true)
	draw_sprite(spr_indicator_talk, image_index, x, bbox_top);