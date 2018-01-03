global.pause = true;

draw_set_font(global.font_doodle);

enum menu_page {
	main,
	settings,
	audio,
	graphics,
	controls,
	height
}

enum menu_element_type {
	script_runner,
	page_transfer,
	slider,
	shift,
	toggle,
	input
}

//Create menu pages
ds_menu_main = create_menu_page(
	["RESUME", menu_element_type.script_runner, resume_game],
	["SETTINGS", menu_element_type.page_transfer, menu_page.settings],
	["EXIT", menu_element_type.script_runner, exit_game]
);

ds_settings = create_menu_page(
	["AUDIO", menu_element_type.page_transfer, menu_page.audio],
	["GRAPHICS", menu_element_type.page_transfer, menu_page.graphics],
	["CONTROLS", menu_element_type.page_transfer, menu_page.controls],
	["BACK", menu_element_type.page_transfer, menu_page.main]
);


ds_menu_audio = create_menu_page(
	["MASTER", menu_element_type.slider, change_volume, 1, [0,1]],
	["SOUNDS", menu_element_type.slider, change_volume, 1, [0,1]],
	["MUSIC", menu_element_type.slider, change_volume, 1, [0,1]],
	["BACK", menu_element_type.page_transfer, menu_page.settings]
);

ds_menu_graphics = create_menu_page(
	["SIZE", menu_element_type.shift, change_resolution, 0, ["SMALL", "MEDIUM", "BIG"]], 
	["FULLSCREEN", menu_element_type.toggle, change_window_mode, 0, ["OFF", "ON"]],
	["BACK", menu_element_type.page_transfer, menu_page.settings] 
);

ds_menu_controls = create_menu_page(
	["UP", menu_element_type.input, "up", vk_up],
	["DOWN", menu_element_type.input, "down", vk_down],
	["LEFT", menu_element_type.input, "left", vk_left],
	["RIGHT", menu_element_type.input, "right", vk_right],
	["ACTION", menu_element_type.input, "action_one", ord("Z")],
	["BACK", menu_element_type.page_transfer, menu_page.settings]
);


page = 0;
menu_pages = [ds_menu_main, ds_settings, ds_menu_audio, ds_menu_graphics, ds_menu_controls];

for (var i=0; i<array_length_1d(menu_pages); i++) {
	menu_option[i] = 0;
}