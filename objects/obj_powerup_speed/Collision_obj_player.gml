/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if (place_meeting(x, y, obj_player)) {
    // Aumentar a velocidade do player temporariamente
    with (other) {
        speed_boost = true;
        boost_timer = room_speed * 5; // 5 segundos de boost
    }

    // Tocar som do power-up
    audio_play_sound(snd_powerup, 1, false);

    // Destruir o power-up
    instance_destroy();
}