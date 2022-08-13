scoreboard players set @s Range 128
execute facing entity @s feet positioned ^ ^ ^0.5 run function hades:weeping_angels/ray_trace_wall
# Add special tag if entity's feet behind wall
tag @s[tag=!observed] add ob1
tag @s add observed
scoreboard players set @s Range 128
execute facing entity @s eyes positioned ^ ^ ^0.5 run function hades:weeping_angels/ray_trace_wall
# Check if both entity's eyes and feet behind wall
execute unless entity @s[tag=ob1,tag=!observed] run tag @s add observed
tag @s remove ob1
scoreboard players reset @s Range