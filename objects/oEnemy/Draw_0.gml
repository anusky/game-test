/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

draw_self();

if(flash > 0) {
	flash--;
	shader_set(shWhite);
	draw_self();
	shader_reset();
}



