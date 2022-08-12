scoreboard players remove @s Range 1
execute run particle dust 0.702 0.843 0 1 ^ ^ ^0.1 0 0 0 1 0 force

tag @s add hades.gorgona_caster
execute unless entity @s[dx=0] as @e[type=!#hades:objects,dx=0] unless predicate hades:is_blind positioned ~ ~-0.99 ~ if entity @s[dx=0] unless score @s hades.ticks_stoned matches 98.. at @s run function hades:items/aegis/_check_if_observing
tag @s remove hades.gorgona_caster

execute unless entity @s[dx=0] as @e[type=!#hades:objects,dx=0,tag=observed] run scoreboard players add @s hades.ticks_stoned 3
tag @e[dx=0,tag=observed] remove observed

execute unless entity @s[dx=0] if entity @e[type=!#hades:objects,dx=0] positioned ~ ~-0.99 ~ if entity @e[dx=0] run scoreboard players reset @s Range
execute if score @s Range matches 1.. if block ^ ^ ^ #hades:not_solid positioned ^ ^ ^0.5 run function hades:items/aegis/gorgona_ray