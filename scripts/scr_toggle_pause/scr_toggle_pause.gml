// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function scr_toggle_pause(){
	// scr_toggle_pause.gml
	global.paused = !global.paused; // Inverte o estado de pausa

	if (global.paused) {
	    // Pausar todos os sons
	    audio_stop_all();

	    // Pausar todas as animações (definir image_speed para 0)
	    with (all) {
	        if (sprite_index != -1) {
	            image_speed = 0;
	        }
	    }
	} else {
	    // Retomar as animações (definir image_speed para 1, ou o valor original se houver)
	    with (all) {
	        if (sprite_index != -1) {
	            image_speed = 1; // Ajuste conforme necessário
	        }
	    }

	    // Retomar a música apropriada
	    scr_handle_room_music();
	}
}