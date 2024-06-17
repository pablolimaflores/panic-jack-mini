/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Verificar a sala atual e definir ações para a tecla Enter
if (room == room_title) {
    // Funções da tecla Enter na tela de título
    if (keyboard_check_pressed(vk_enter)) {
        room_goto(room_level_01); // Começar o jogo
    }
} else if (room == room_level_01) {
    // Funções da tecla Enter na fase
    if (keyboard_check_pressed(vk_enter)) {
        scr_toggle_pause(); // Pausar ou retomar o jogo
    }
}

// Função da tecla ESC para ambas as rooms
if (keyboard_check_pressed(vk_escape)) {
    global.confirm_exit = true;
    global.paused = true;
    audio_stop_all(); // Pausar todos os sons
}

// Verificar se o jogo está pausado e mostrar a janela de confirmação
if (global.confirm_exit) {
    // Verificar se o jogador escolhe "Y" (Yes) ou "N" (No)
    if (keyboard_check_pressed(ord("Y")) || keyboard_check_pressed(ord("S"))) {
        game_end(); // Fecha o jogo
    } else if (keyboard_check_pressed(ord("N"))) {
        global.confirm_exit = false;
        global.paused = false;
        scr_handle_room_music();
    }
}

// Verificar o estado de pausa e pausar o jogo
if (global.paused && !global.confirm_exit) {
    exit; // Sai do evento Step para não atualizar nada enquanto pausado
}
