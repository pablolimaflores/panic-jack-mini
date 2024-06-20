/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Efeito do PAUSE
if (global.paused) {
    exit; // Interrompe a execução do Step se o jogo estiver pausado
}

// Evento Step
//y += vspd;
y += global.obstacle_speed;

// Aumenta o Score caso o objeto passe da tela
if (y > (room_height + sprite_height)) {
    // Incrementar a pontuação
    global.score += 1;
    
	// Verificar se atingiu um marco de pontuação para conceder vida adicional
	scr_check_life_increase(global.score);
	
    // Destruir o objeto
    instance_destroy();
}
