// Inherit the parent event
event_inherited();
v = 5
g = 0.3
p = -8
quant_p = 0
max_p = 2

sprites_jogador = [Idle__32x32_,
				   Run__32x32_,
				   Jump__32x32_,
				   Double_Jump__32x32_,
				   Fall__32x32_,
				   Wall_Jump__32x32_,
				  ]
checkpoint = false

function input_player()
{
	var esquerda, direita, pulo, xdirection;
	
	esquerda = keyboard_check(ord("A"))
	direita = keyboard_check(ord("D"))
	pulo = keyboard_check_pressed(vk_space)
	
	xdirection = (direita - esquerda) 
	var _vel_x = (direita - esquerda) * v
	
	var no_chao = place_meeting(x, y+1, chao_obj)
	var parede = place_meeting(x +(xdirection), y, chao_obj)
	
	if xdirection != 0
	{
		image_xscale = xdirection
	}
	
	if no_chao
	{
		if xdirection != 0
		{
			sprite_index = sprites_jogador[1]
		}
		else
		{
			if image_index >= image_number -1
				sprite_index = sprites_jogador[0]
		}
	}
	else if parede
	{
		vel_y = 1
		sprite_index = sprites_jogador[5]
	}
	else
	{
		if quant_p == max_p - 1
		{
			sprite_index = sprites_jogador[2]
		}
		else
		{
			sprite_index = sprites_jogador[3]
		}
		
		if vel_y > 0
		{
			var inimigo = instance_place(x,y+4, inimigo_pai)
			if inimigo
			{
				inimigo.ini_dano = true
				vel_y = p
			}
			sprite_index = sprites_jogador[4]
		}
	}
	
	
	if no_chao
	{
		quant_p = max_p
		if pulo
		{
			vel_y += p
			quant_p--
			audio_play_sound(pulo_som,2,false)
		}
	}
	else
	{
		if pulo && quant_p ==1
		{
			vel_y = -8
			quant_p--
			audio_play_sound(pulo_som,2,false)
		}
		else if pulo && quant_p ==2
		{
			vel_y = -8
			quant_p -=2
			audio_play_sound(pulo_som,2,false)
		}
		
		vel_y += g  
		
		if parede
		{	
			if pulo
			{
				vel_y = p
				vel_x = (20 * xdirection) * -1
				audio_play_sound(pulo_som,1,false)
			}
		}
	}
	vel_x = lerp(vel_x, _vel_x, 0.25)
	
}