/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Desenhar o fantasma com o alpha ajustado
draw_set_alpha(image_alpha);
draw_sprite_ext(sprite_index, 0, x, y, scale, scale, 0, c_white, image_alpha);
draw_set_alpha(1); // Resetar o alpha
