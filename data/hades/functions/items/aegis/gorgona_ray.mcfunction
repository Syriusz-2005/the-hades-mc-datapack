scoreboard players remove @s hades.aegis_range 1
execute run particle dust 0.702 0.843 0 1 ^ ^ ^0.1 0 0 0 1 0 force

tag @s add hades.gorgona_caster
execute unless entity @s[dx=0] as @e[type=!#hades:objects,dx=0,predicate=!hades:is_blind] positioned ~ ~-0.99 ~ if entity @s[dx=0] unless score @s hades.ticks_stoned matches 98.. at @s run function hades:items/aegis/_check_if_observing
execute unless entity @s[dx=0] as @e[type=!#hades:objects,dx=0] positioned ~ ~-0.99 ~ if entity @s[dx=0] run scoreboard players reset @s hades.aegis_range

tag @s remove hades.gorgona_caster
execute if score @s hades.aegis_range matches 1.. if block ^ ^ ^ #hades:not_solid positioned ^ ^ ^0.5 run function hades:items/aegis/gorgona_ray