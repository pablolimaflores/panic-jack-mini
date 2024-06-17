// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function scr_handle_room_music(){
	if (room == room_title) {
	    audio_play_sound(snd_title_music, 1, true); // Toca a música da tela de título em loop
	} else if (room == room_level_01) {
	    audio_play_sound(snd_level_music, 1, true); // Toca a música da fase em loop
	} else if (room == room_game_over){
		audio_play_sound(snd_game_over, 1, false); // Toca o som de Game Over
	}
}