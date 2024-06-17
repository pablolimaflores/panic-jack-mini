/// @description Código de movimentação e outras lógicas existentes
// Você pode escrever seu código neste editor


// Efeito do PAUSE
if (global.paused) {
    exit; // Interrompe a execução do Step se o jogo estiver pausado
}

// Código de movimentação do jogador...


// Verificar se o boost de velocidade está ativo
if (speed_boost) {
    boost_timer--;
    ghost_timer++;
    if (boost_timer <= 0) {
        speed_boost = false;
    }
} else {
    ghost_timer = 0;
}

//Definir a velocidade atual
var current_speed = base_speed;
if (speed_boost) {
    current_speed = boost_speed;
}

// Gerar fantasmas se o boost de velocidade estiver ativo
if (speed_boost && ghost_timer >= ghost_interval) {
    // Criar um fantasma    
	scr_draw_ghost_effect();
    ghost_timer = 0;
}

// Gerenciar o tempo de invencibilidade
if (global.invincible) {
    global.invincible_timer -= 1;
    if (global.invincible_timer <= 0) {
        global.invincible = false;
        // Restaurar a visibilidade do player quando a invencibilidade acabar
        image_alpha = 1;
    } else {
        // Fazer o player piscar
        if ((global.invincible_timer div 5) mod 2 == 0) {
            image_alpha = 0.5;
        } else {
            image_alpha = 1;
        }
    }
}

//Movimentação do player
if keyboard_check(vk_up)
{
	//vai diminuindo o valor do Y, movendo para cima
	//y-=current_speed
	//muda o sprite para o s_player_run (personagem correndo)
	//sprite_index=s_player_run;
}

if keyboard_check(vk_down)
{
	//vai aumentando o valor do Y, movendo para baixo
	//y+=current_speed
	//muda o sprite para o s_player_run (personagem correndo)
	//sprite_index=s_player_run;
}

if keyboard_check(vk_left)
{
	//vai diminuindo o valor do X, movendo para esquerda
	x-=current_speed
	//vira o personagem para esquerda
	image_xscale=-1 
	//muda o sprite para o s_player_run (personagem correndo)
	sprite_index=spr_player_run;
} else if keyboard_check(vk_right)
{
	//vai aumentando o valor do X, movendo para direita
	x+=current_speed
	//vira o personagem para direita
	image_xscale=1
	//muda o sprite para o s_player_run (personagem correndo)
	sprite_index=spr_player_run;
}

if !(keyboard_check(vk_left) || keyboard_check(vk_right) || keyboard_check(vk_up) || keyboard_check(vk_down)) {
	//muda o sprite para o s_player (personagem parado)
	sprite_index=spr_player;
}

// Certifique-se de que o personagem não saia dos limites da tela
if (x < 0) {
    x = 0;
}
if (x > room_width) {
    x = room_width;
}

if (y < 0) {
    y = 0;
}
if (y > room_height) {
    y = room_height;
}