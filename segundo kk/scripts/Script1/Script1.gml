global.morangos = 0


function mudando_sprite(sprite)
{
	if sprite_index != sprite
	{
		sprite_index = sprite
		image_index = 0
	}
}

function transicao_simples(_room)
{
	var _transicao = instance_create_layer(0,0,layer,transicao)
	_transicao.rm_destino = _room
}

function _screenshake(_shake)
{
	var shake_obj = instance_create_layer(0,0,layer,screenshake)
	shake_obj.shake = _shake
}