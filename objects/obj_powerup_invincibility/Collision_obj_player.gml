/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if (place_meeting(x, y, obj_player)) {
	
	//scr_activate_invincibility(obj_player.invincible_duration_powerup);
	scr_activate_invincibility(global.invincible_duration_powerup);

    // Tocar som do power-up
    audio_play_sound(snd_powerup, 1, false);

    // Destruir o power-up
    instance_destroy();
}