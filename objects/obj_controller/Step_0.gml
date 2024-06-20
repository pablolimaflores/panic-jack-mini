/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Efeito do PAUSE
if (global.paused) {
    exit; // Interrompe a execução do Step se o jogo estiver pausado
}

//Ações do teclado de acordo com a ROOM
var current_room = room;

// No evento Step do obj_controller
scr_increase_difficulty();

// Ajustar a lógica de spawn de obstáculos e power-ups conforme os novos parâmetros
//if (current_room == room_level_01) {
if (current_room <> room_title && current_room <> room_title) {
    if (global.obstacle_timer <= 0) {
        // Código para criar um obstáculo
        //instance_create_layer(random(room_width), -32, "Obstacles", obj_obstacle);
        instance_create_layer(random(room_width), -50, "Instances", obj_object);
        global.obstacle_timer = global.obstacle_spawn_rate;
    } else {
        global.obstacle_timer -= 1;
    }
    
    if (global.powerup_timer <= 0) {
        // Código para criar um power-up
        //instance_create_layer(random(room_width), -32, "Powerups", obj_powerup_speed);
        instance_create_layer(random(room_width), -50, "Instances", obj_powerup_speed);
        global.powerup_timer = global.powerup_spawn_rate;
    } else {
        global.powerup_timer -= 1;
    }
}



// Temporizador do powerup speed
/*
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
*/
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

