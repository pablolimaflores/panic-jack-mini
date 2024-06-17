/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Evento Mouse > Global Mouse > Left Button no obj_key_manager

// Verificar se a janela de confirmação está sendo mostrada
if (global.confirm_exit) {
    // Coordenadas da janela de confirmação
    var window_width = 800 * global.scale;
    var window_height = 600 * global.scale;
    var window_x = (display_get_gui_width() - window_width) / 2;
    var window_y = (display_get_gui_height() - window_height) / 2;

    // Coordenadas dos botões
    var button_width = 200 * global.scale;
    var button_height = 100 * global.scale;

    var button_sim_x = window_x + (window_width - button_width) / 2;
    var button_sim_y = window_y + 240 * global.scale;

    var button_nao_x = window_x + (window_width - button_width) / 2;
    var button_nao_y = window_y + 360 * global.scale;

    // Verificar se o mouse está sobre o botão "SIM"
    if (mouse_x >= button_sim_x && mouse_x <= button_sim_x + button_width &&
        mouse_y >= button_sim_y && mouse_y <= button_sim_y + button_height) {
        game_end(); // Fecha o jogo
    }

    // Verificar se o mouse está sobre o botão "NÃO"
    if (mouse_x >= button_nao_x && mouse_x <= button_nao_x + button_width &&
        mouse_y >= button_nao_y && mouse_y <= button_nao_y + button_height) {
        global.confirm_exit = false;
        if (room != room_title) {
			global.paused = false;
        }
        scr_handle_room_music();
    }
}


