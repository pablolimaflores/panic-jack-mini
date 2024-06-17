/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// No evento Create do obj_controller
scr_handle_screen_size();


// Evento Create do obj_controller
global.lives = 3; // Número inicial de vidas
global.score = 0; // Pontuação inicial

alarm[0] = 30; // Periodicidade para chamar o alarm[0], que gera os objetos que caem

// powerup speed vars
powerup_speed_spawn_timer_factor = irandom_range(3, 5);
powerup_speed_spawn_timer = room_speed * powerup_speed_spawn_timer_factor; //o powerup pode surgir a cada 8 até 12 segundos

// Variáveis para o controle de power-ups
powerup_invincibility_timer = 0;
powerup_invincibility_spawn_timer_factor = irandom_range(4, 8);
//powerup_invincibility_interval = 600; // Intervalo de 10 segundos (60 steps por segundo)
powerup_invincibility_interval = room_speed * powerup_invincibility_spawn_timer_factor; // Intervalo de entre 8 a 12 segundos