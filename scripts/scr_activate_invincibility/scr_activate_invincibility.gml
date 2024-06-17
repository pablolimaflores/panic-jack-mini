// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function scr_activate_invincibility(){
	/// scr_activate_invincibility(duration)

	var duration = argument0;

	global.invincible = true;
	global.invincible_timer = duration;
	image_alpha = 1; // Resetar a visibilidade do player
}