#Test
#particle crit ~ ~ ~

execute unless block ~ ~ ~ #hades:not_solid run tag @s remove observed
scoreboard players remove @s Range 1
execute if entity @e[tag=weeping_angel,dx=0] positioned ~ ~-0.99 ~ if entity @e[tag=weeping_angel,dx=0] run scoreboard players reset @s Range
execute if score @s Range matches 1.. if block ~ ~ ~ #hades:not_solid positioned ^ ^ ^0.5 run function hades:weeping_angels/ray_trace_wall