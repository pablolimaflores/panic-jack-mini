// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function scr_draw_button_text() {
    // Argumentos do script
    var texto = argument0;
    var pos_x = argument1;
    var pos_y = argument2;
    var btn_width = argument3;
    var btn_height = argument4;

    // Calcular a escala baseada no tamanho desejado
    var sp_width = sprite_get_width(sprite_index);
    var sp_height = sprite_get_height(sprite_index);

    var scale_x = (btn_width * global.scale_x) / sp_width;
    var scale_y = (btn_height * global.scale_y) / sp_height;

    // Desenhar o sprite do botão com escala
    //draw_sprite_ext(sprite_index, image_index, pos_x, pos_y, scale_x, scale_y, 0, c_white, 1);

	// Desenhar sprite sem escala (nõa consigo resolver a questão da escala...)
	draw_self();

    // Definir a fonte
    draw_set_font(fnt_button);

    // Definir a cor do texto
    draw_set_color(c_white);

    // Calcular a posição centralizada do texto
    //var text_width = string_width(texto) * global.scale_x;
    //var text_height = string_height(texto) * global.scale_y;
    //var text_x = pos_x + (btn_width * global.scale_x - text_width) / 2;
    //var text_y = pos_y + (btn_height * global.scale_y - text_height) / 2;
	
	var text_x = pos_x - string_width(texto) / 2;
    var text_y = pos_y - string_height(texto) / 2;

    // Desenhar o texto no centro do botão
    draw_text(text_x, text_y, texto);
}


