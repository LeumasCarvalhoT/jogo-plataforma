var colx, coly;

colx = instance_place(x+vel_x, y, chao_obj)
coly = instance_place(x,y+vel_y, chao_obj)

if colx
{
	if vel_x > 0
	{
		x = colx.bbox_left + (x - bbox_right)
		
	}
	if vel_x < 0
	{
		x = colx.bbox_right + (x - bbox_left)
	}
	vel_x = 0
}

if coly
{
	if vel_y > 0
	{
		y = coly.bbox_top + (y - bbox_bottom)
	}
	
	if vel_y < 0
	{
		y = coly.bbox_bottom + (y - bbox_top)
	}
	vel_y = 0
}

x += vel_x
y += vel_y