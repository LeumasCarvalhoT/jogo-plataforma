if checkpoint
{
	vel_x = 0
	vel_y = 0
	if image_index >= image_number - 1
	{
		var start = true
		if instance_exists(checkpoint_obj)
		{
			if checkpoint_obj.flag_ativa
			{
				x = checkpoint_obj.x
				y = checkpoint_obj.y-10
				start = false
			}
		}
		if start
		{
			x = start_obj.x
			y = start_obj.y
		}
		mudando_sprite(renascendo)
	}
	if sprite_index == renascendo
	{
		if image_index >= image_number - 1
		{
			checkpoint = false
		}
	}
}