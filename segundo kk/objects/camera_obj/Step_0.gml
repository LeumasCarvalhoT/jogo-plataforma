if instance_exists(jogador_obj)
{
	var _foco = jogador_obj
	x = lerp(x, _foco.x, 0.75 )
	y = lerp(y, _foco.y, 0.75 )
}

camera_set_view_border(view_camera[0],360, 290)