/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// No evento Create do obj_controller
scr_handle_screen_size(); // dimensões da tela

global.lives = 3; // Número inicial de vidas
global.score = 0; // Pontuação inicial

global.difficulty_thresholds = [25, 50, 75, 100, 125, 150, 175, 200, 225, 250, 275, 300, 325, 350, 375, 400, 425, 450, 475, 500, 550, 600, 650, 700, 750, 800, 850, 900, 950, 1000];
global.current_threshold_index = 0;
global.difficulty_level = 1; // Nível de dificuldade inicial

global.obstacle_speed = 6; // Velocidade inicial dos obstáculos
global.obstacle_spawn_rate = 60; // Frequência inicial de aparecimento dos obstáculos
global.powerup_spawn_rate = 150; // Frequência inicial de aparecimento dos power-ups

global.obstacle_timer = 0; // hora que o obj_object é gerado
global.powerup_timer  = 1; // define a frequencia do powerup



alarm[0] = 30; // Periodicidade para chamar o alarm[0], que gera os objetos que caem

// powerup speed vars
powerup_speed_spawn_timer_factor = irandom_range(3, 5);
powerup_speed_spawn_timer = room_speed * powerup_speed_spawn_timer_factor; //o powerup pode surgir a cada 8 até 12 segundos

// Variáveis para o controle de power-ups
powerup_invincibility_timer = 0;
powerup_invincibility_spawn_timer_factor = irandom_range(4, 8);
//powerup_invincibility_interval = 600; // Intervalo de 10 segundos (60 steps por segundo)
powerup_invincibility_interval = room_speed * powerup_invincibility_spawn_timer_factor; // Intervalo de entre 8 a 12 segundos