if instance_exists(caran_hit)
{
	caran_hit.x = x
	caran_hit.y = y-4
}

if inimigo_morto
{
	instance_destroy(caran_hit)
	if image_index >= image_number -1
	{
		instance_destroy()
	}
	exit
}

var _chao = place_meeting(x, y+5, chao_obj)
var parede = place_meeting(x+vel_x,y, chao_obj)
var xdirection = vel_x*-1



if xdirection != 0
{
	if xdirection >= 1
	image_xscale = 1
	else if xdirection <= -1
	image_xscale = -1
}

if _chao
{
	tempo_mover -= 1
	if tempo_mover <= 0
	{
		if ini_movendo
		{
			lado = true
			vel_x = v
			ini_movendo = false
		}
		else
		{
			vel_x = 0
			if lado
			{
				v *= -1
				lado = false
			}
			ini_movendo = true
		}
		tempo_mover = room_speed * 2
	}
	if vel_x != 0 && !ini_dano
	{
		sprite_index = caranguejo_andando
	}
	else
	{
		if image_index >= image_number -1
		{
			sprite_index = caranguejo_parado
		}
	}
	
	if parede
	{
		vel_x *= -1
	}
}
vel_y += g

if !cair
{
	if (!place_meeting(x+(vel_x*20), y+1, chao_obj))
	{
		vel_x *= -1		
	}
}
else
{
	vel_x = 0
}

if ini_dano && !invenc
{
	invenc = true
	vel_x = 0
	inimigo_vida--	
	if inimigo_vida <= 0
	{
		inimigo_morto = true
		mudando_sprite(caranguejo_morrendo)
	}
	else
	{
		alarm[0] = room_speed 
		mudando_sprite(caranguejo_dano)
		if invenc
		{
			alpha = 0.5
		}
	}
}

