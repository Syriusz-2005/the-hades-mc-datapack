
execute in hades:hades run function hades:hades/biome_tick
execute in hades:hades run function hades:hades/structure_tick
execute as @e[type=marker,tag=hades.fountain_soul_sand_provider] at @s run function hades:overworld/soul_sand_provider/run

function hades:overworld/kill_tick

execute as @e[tag=firework_marker] at @s run tp @s ~ ~-1.5 ~
execute as @e[tag=firework_marker] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 10 10 10 0.1 20 force

effect give @a[tag=builder] night_vision 99 1 true


scoreboard players add %timer_10_tick hades_timers 1
scoreboard players add %timer_100_tick hades_timers 1
scoreboard players add %timer_160_tick hades_timers 1
scoreboard players add %timer_500_tick hades_timers 1

execute if score %timer_10_tick hades_timers matches 10.. run scoreboard players reset %timer_10_tick hades_timers
execute if score %timer_100_tick hades_timers matches 100.. run scoreboard players reset %timer_100_tick hades_timers
execute if score %timer_160_tick hades_timers matches 160.. run scoreboard players reset %timer_160_tick hades_timers
execute if score %timer_500_tick hades_timers matches 500.. run scoreboard players reset %timer_500_tick hades_timers

