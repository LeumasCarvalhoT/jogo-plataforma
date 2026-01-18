if coletado
{
	mudando_sprite(coletando)
	if image_index >= image_number 
	{
		instance_destroy();
	}
}