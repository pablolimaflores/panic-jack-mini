// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function scr_handle_screen_size(){
	var base_width = 1080;
	var base_height = 1920;

	global.scale_x = display_get_gui_width() / base_width;
	global.scale_y = display_get_gui_height() / base_height;


	// Aplicar a escala
	if (global.scale_x < global.scale_y) {
	    global.scale = global.scale_x;
	} else {
	    global.scale = global.scale_y;
	}

	display_set_gui_size(base_width, base_height);
}