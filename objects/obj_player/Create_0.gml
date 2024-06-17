/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

speed_boost = false;
boost_timer = 0;
base_speed = 15; // Velocidade normal do player
boost_speed = base_speed * 1.5; // Velocidade do player com o boost

// Variáveis para o efeito de fantasmas (efeito de aumento de velocidade)
global.ghost_count = 0;
ghost_timer = 0;
ghost_interval = 4; // Intervalo de frames entre cada fantasma
ghost_alpha = 0.3; // Transparência dos fantasmas

// Variáveis de invencibilidade
global.invincible = false;
global.invincible_timer = 0;
global.invincible_duration_collision = 120; // 2 segundos (60 steps por segundo)
global.invincible_duration_powerup = 300; // 5 segundos (60 steps por segundo)