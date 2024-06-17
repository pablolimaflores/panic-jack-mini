/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Efeito do PAUSE
if (global.paused) {
    exit; // Interrompe a execução do Step se o jogo estiver pausado
}

// Evento Step do obj_player_life_gain_effect
y += speed;
alpha -= 1 / room_speed; // Reduzir a transparência ao longo de 1 segundo

if (alpha <= 0) {
    instance_destroy(); // Destruir o objeto quando a transparência chegar a 0
}
