/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Efeito do PAUSE
if (global.paused) {
    exit; // Interrompe a execução do Step se o jogo estiver pausado
}

y += vspd;

// Destruir o power-up se ele sair da tela
if (y > room_height) {
    instance_destroy();
}
