var player = instance_place(x, y, jogador_obj)

if player
{
	mudando_sprite(trampolin_movendo)
	flag_colisao = true
	player.vel_y = -f_trampolin
	player.quant_p = player.max_p
	player.quant_p--
}
if flag_colisao && image_index >= image_number-1
{
	mudando_sprite(trampolin_parado)
	flag_colisao = false
}