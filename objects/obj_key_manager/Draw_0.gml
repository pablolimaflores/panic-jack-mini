/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Evento Draw do obj_key_manager
if (global.confirm_exit) {
	// Definir a nova fonte
    draw_set_font(fnt_default);
	
	// Definir a transparência para janela
    draw_set_alpha(0.6);
	
    // Desenha a janela de confirmação
    var window_width = 800 * global.scale;
    var window_height = 600 * global.scale;
    var window_x = (display_get_gui_width() - window_width) / 2;
    var window_y = (display_get_gui_height() - window_height) / 2;

    draw_set_color(c_black);
    draw_rectangle_color(window_x, window_y, window_x + window_width, window_y + window_height, c_black, c_black, c_black, c_black, false);

    // Redefinir a transparência para o texto
    draw_set_alpha(1.0);

    // Calcular a posição do texto centralizado
    var text1 = "Deseja sair do jogo?";
    var text2 = "Sim";
    var text3 = "Não";

    var text1_width = string_width(text1);
    var text2_width = string_width(text2);
    var text3_width = string_width(text3);

    var text1_x = window_x + (window_width - text1_width) / 2;
    var text2_x = window_x + (window_width - text2_width) / 2;
    var text3_x = window_x + (window_width - text3_width) / 2;

    draw_set_color(c_white);
    draw_text(text1_x, window_y + 120 * global.scale, text1);
    draw_text(text2_x, window_y + 240 * global.scale, text2);
    draw_text(text3_x, window_y + 360 * global.scale, text3);

    // Desenha uma borda ao redor da janela
    draw_set_color(c_white);
    draw_rectangle(window_x, window_y, window_x + window_width, window_y + window_height, true);
	
	// Redefinir a transparência para o restante do jogo
    draw_set_alpha(1.0);
}

