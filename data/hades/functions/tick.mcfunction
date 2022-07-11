
execute in hades:hades run function hades:hades/biome_tick
function hades:overworld/kill_tick

execute as @e[tag=firework_marker] at @s run tp @s ~ ~-1.5 ~
execute as @e[tag=firework_marker] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 10 10 10 0.1 20 force

effect give @a[tag=builder] night_vision 99 1 true