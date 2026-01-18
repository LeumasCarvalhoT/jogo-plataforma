if flag_start && !flag_ativa
{
	mudando_sprite(Checkpoint__bandeira_saindo)
	if image_index >= image_number - 1
	{
		mudando_sprite(Checkpoint__bandeira_balacando)
		flag_ativa = true
	}
}
if !flag_start && !flag_ativa
{
	mudando_sprite(Checkpoint__sem_bandeira)
}