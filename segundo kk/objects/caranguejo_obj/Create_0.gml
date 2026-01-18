// Inherit the parent event
event_inherited();

inimigo_morto = false
ini_dano = false
inimigo_vida = 3

g = 0.3
v = choose(1, -1)
lado = true
invenc = false
tempo_mover = room_speed
ini_movendo = true

caran_hit = instance_create_layer(x,y,layer,hit)

caran_hit.image_yscale = caran_hit.image_yscale * 0.7
caran_hit.image_xscale = caran_hit.image_xscale * 1