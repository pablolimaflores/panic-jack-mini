/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Evento Draw do obj_title

// Definir a fonte para a fonte que você criou (se tiver)
draw_set_font(fnt_title); // Substitua pela fonte que você criou para o título

// Definir a cor do texto
draw_set_color(c_orange);

// Desenhar o título do jogo
draw_text(room_width / 2 - string_width("Panic Jack Mini") / 2, room_height / 3, "Panic Jack Mini");

// Resetar a cor do texto (opcional)
draw_set_color(c_black);
