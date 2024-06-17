/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Evento Draw do obj_hud
// Definir a fonte para a nova fonte criada
draw_set_font(fnt_lives);

// Definir a cor do texto
draw_set_color(c_orange);

// Calcular as posições dinâmicas usando GUI dimensions
var margem_x = display_get_gui_width() * 0.02; // 2% da largura da tela
var margem_y = display_get_gui_height() * 0.02; // 2% da altura da tela

// Desenhar a pontuação no canto superior esquerdo
draw_text(margem_x, margem_y, "Pontuação: " + string(global.score));

// Texto das vidas
var vidas_texto = "Vidas: " + string(global.lives);

// Calcular a posição x do texto das vidas
var vidas_x = display_get_gui_width() - margem_x - string_width(vidas_texto);

// Desenhar o número de vidas no canto superior direito
draw_text(vidas_x, margem_y, vidas_texto);

// Resetar a cor do texto (opcional)
//draw_set_color(c_black);