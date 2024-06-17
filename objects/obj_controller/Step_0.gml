/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Efeito do PAUSE
if (global.paused) {
    exit; // Interrompe a execução do Step se o jogo estiver pausado
}

//Ações do teclado de acordo com a ROOM
var current_room = room;

// Temporizador do powerup speed
powerup_speed_spawn_timer--;
if (powerup_speed_spawn_timer <= 0) {
    powerup_speed_spawn_timer = room_speed * powerup_speed_spawn_timer_factor; // Resetar o timer

    // Criar power-up em uma posição aleatória
    var powerup_x = irandom_range(0, room_width);
	var powerup_y = -50; // Começa fora da tela, na parte superior
    instance_create_layer(powerup_x, powerup_y, "Instances", obj_powerup_speed);
}

// Gerenciar a periodicidade do power-up de invencibilidade
powerup_invincibility_timer += 1;
if (powerup_invincibility_timer >= powerup_invincibility_interval) {
    powerup_invincibility_timer = 0;
    
    // Criar o power-up de invencibilidade em uma posição aleatória
    var powerup_x = irandom_range(50, room_width - 50);
    var powerup_y = -50; // Começa fora da tela, na parte superior
    instance_create_layer(powerup_x, powerup_y, "Instances", obj_powerup_invincibility);
}

//teste do efeito de vida extra
if (keyboard_check_pressed(vk_space)) {
    if (layer_exists("Effects")) {
		//gera o efeito um pouco em cima do player
	    instance_create_layer(obj_player.x, obj_player.y-(obj_player.sprite_height+10), "Effects", obj_player_life_gain_effect);
	    show_debug_message("Efeito criado!");
	} else {
	    show_debug_message("Camada 'Effects' não encontrada!");
	}
}

