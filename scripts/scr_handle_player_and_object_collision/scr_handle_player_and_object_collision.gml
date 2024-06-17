// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function scr_handle_player_and_object_collision(){
	// scr_handle_player_and_object_collision.gml

	if (!global.invincible) {
		// Reduzir as vidas do player
		global.lives -= 1;

		// Reiniciar a posição do objeto que cai (ou destruí-lo)s
		with (other) {
		    // Destruir o objeto que colidiu
		    instance_destroy();
		}
		
		 // Tocar som
		audio_play_sound(snd_player_damage, 1, false);
			
		// Ativar invencibilidade por colisão
		scr_activate_invincibility(global.invincible_duration_collision);		
	
		// Verificar se o player ainda tem vidas
		if (global.lives <= 0) {	    
		    // Mostrar uma mensagem de Game Over e parar o jogo
		     show_message("Game Over");
			 room_goto(room_title); // Muda para a room do titulo	    
		}
	}

}