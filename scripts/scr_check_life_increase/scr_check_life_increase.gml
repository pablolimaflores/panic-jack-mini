// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function scr_check_life_increase(){
	/// scr_check_life_increase(current_score)
	/// @param current_score A pontuação atual do jogador
	/*
	Este script verifica se a pontuação atual atingiu um marco e, se sim,
	concede uma vida adicional ao jogador.
	*/

	var current_score = argument0;
	var milestones = scr_define_score_milestones();
	var milestone_count = array_length(milestones);

	// Verificar cada marco de pontuação
	for (var i = 0; i < milestone_count; i++) {
	    var milestone = milestones[i];
	    if (current_score == milestone) {
	        // Conceder uma vida adicional
	        global.lives += 1;
			
			// Efeito visual para indicar ganho de vida extra
			//instance_create_layer(x, y, "Effects", obj_player_life_gain_effect);
			
			// Efeito visual para indicar ganho de vida extra
	        if (layer_exists("Effects")) {
	            //gera o efeito um pouco em cima do player
				instance_create_layer(obj_player.x, obj_player.y-(obj_player.sprite_height+10), "Effects", obj_player_life_gain_effect);
	        } else {
	            show_debug_message("Camada 'Effects' não encontrada!");
	        }
			
	        // Pode-se adicionar um som ou efeito visual aqui para feedback ao jogador
	        audio_play_sound(snd_extra_life, 1, false);
	    }
	}
}