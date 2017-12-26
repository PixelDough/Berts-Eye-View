/// @description ACTION

r = keyboard_check(ord("D"));
l = keyboard_check(ord("A"));
u = keyboard_check(ord("W"));
d = keyboard_check(ord("S"));

r_p = keyboard_check_pressed(ord("D"));
l_p = keyboard_check_pressed(ord("A"));
u_p = keyboard_check_pressed(ord("W"));
d_p = keyboard_check_pressed(ord("S"));

action_two = keyboard_check(ord("G"));
action_one = keyboard_check(ord("F"));

action_two_pressed = keyboard_check_pressed(ord("G"));
action_one_pressed = keyboard_check_pressed(ord("F"));

any = keyboard_check_pressed(vk_anykey);
	
pause_pressed = keyboard_check_pressed(vk_enter);