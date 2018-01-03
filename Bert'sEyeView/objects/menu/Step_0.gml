if !global.pause exit;

input_up_p = input.up_p;
input_down_p = input.down_p;
input_enter_p = input.action;

var ds_grid = menu_pages[page], ds_height = ds_grid_height(ds_grid);

var ochange = input_down_p - input_up_p;
if ochange != 0 {
	menu_option[page] = clamp(menu_option[page] + ochange, 0, ds_height-1);
}

if input_enter_p {
	switch(ds_grid[# 1, menu_option[page]]) {
		case menu_element_type.page_transfer: page = ds_grid[# 2, menu_option[page]]; break;
		
		
		case menu_element_type.script_runner:
			var current_val = ds_grid[# 2, menu_option[page]];
			script_execute(current_val);
		break;
	}
}