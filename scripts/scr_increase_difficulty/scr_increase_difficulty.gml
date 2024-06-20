// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function scr_increase_difficulty() {
    if (global.current_threshold_index < array_length(global.difficulty_thresholds)) {
        var next_threshold = global.difficulty_thresholds[global.current_threshold_index];
        if (global.score >= next_threshold) {
            global.current_threshold_index += 1;
            global.difficulty_level += 1;
            
            // Ajustar parâmetros de dificuldade
            // Exemplo: Aumentar a velocidade dos obstáculos
            global.obstacle_speed += 1;
            
            // Exemplo: Aumentar a frequência de aparecimento dos obstáculos
            global.obstacle_spawn_rate -= 5;
            
            // Exemplo: Reduzir a frequência de power-ups
            global.powerup_spawn_rate += 5;
            
            // Adicione outros ajustes de dificuldade conforme necessário
        }
    }
}