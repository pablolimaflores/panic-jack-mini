// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function scr_draw_ghost_effect(){
	/// scr_draw_ghost_effect()

	// Variável global para controlar o número de fantasmas
	if (!variable_global_exists("ghost_count")) {
	    global.ghost_count = 0;
	}

	// Verificar se o número de fantasmas ativos é menor que o limite
	var ghost_limit = 5; // Limite de fantasmas
	if (global.ghost_count < ghost_limit) {
	    // Criar um novo fantasma
	    var ghost = instance_create_layer(x, y, "Instances", obj_player_ghost);
	    ghost.sprite_index = sprite_index;
	    ghost.image_index = image_index;
	    ghost.image_xscale = image_xscale;
	    ghost.image_yscale = image_yscale;
	    ghost.image_alpha = 0.3; // Transparência inicial
    
	    // Incrementar a contagem de fantasmas
	    global.ghost_count += 1;
	}
}