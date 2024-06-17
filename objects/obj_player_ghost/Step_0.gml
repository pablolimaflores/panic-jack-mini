/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Reduzir o alpha gradualmente
image_alpha -= 0.02;
if (image_alpha <= 0) {
    // Decrementar a contagem de fantasmas
    with (obj_player) {
         global.ghost_count -= 1;
    }
    instance_destroy();
}

