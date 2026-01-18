//draw_sprite(morango,0,20,20)

draw_sprite_ext(morango,(get_timer()/1000000) * 10,20,20,2,2,0,c_yellow,1)

draw_set_font(Font1)

draw_set_color(c_white)

draw_text(35,10,"x "+string(global.morangos))

draw_set_colour(c_white)
draw_set_font(-1)