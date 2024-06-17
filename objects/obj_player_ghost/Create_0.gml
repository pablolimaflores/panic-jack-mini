/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Variáveis do fantasma
lifetime = room_speed; // Tempo de vida do fantasma
image_alpha = 0.5; // Transparência inicial do fantasma
image_speed = 0; // Manter o mesmo frame do player
scale = 1; // Escala do fantasma

// Posição inicial
x = other.x;
y = other.y;

// Sprite inicial do fantasma (pegue o sprite do player)
sprite_index = other.sprite_index;
