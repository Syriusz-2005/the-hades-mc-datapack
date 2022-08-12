kill @e[distance=..0.2,tag=hades.gorgona_victim,limit=1,sort=nearest]

execute if predicate hades:has_stone_head run item replace entity @s armor.head with air

attribute @s generic.knockback_resistance modifier remove 673864a8-1eec-44a1-9191-409f37b46e7b