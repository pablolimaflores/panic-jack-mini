/// @description objetos que caem
// Você pode escrever seu código neste editor

if (!global.paused) {
	instance_create_layer(random(room_width), 0, "Instances", obj_object); // Cria o objeto 
}

//alarm[0] = random_range(30, 60); // Define o próximo alarme para criar novos objetos
alarm[0] = random_range(60, 120); // Define o próximo alarme para criar novos objetos
