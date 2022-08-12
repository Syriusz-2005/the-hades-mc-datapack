execute if score @s hades.ticks_stoned matches 0..20 run function hades:items/aegis/stoned_lvl/1

execute if score @s hades.ticks_stoned matches 20..39 run function hades:items/aegis/stoned_lvl/2

# Increment is by 3 so we need to detect that gap
execute if score @s hades.ticks_stoned matches 41..43 at @s unless entity @e[distance=..0.2,tag=hades.gorgona_victim] run function hades:items/aegis/_turn_into_stone
execute if score @s hades.ticks_stoned matches 40 at @s run function hades:items/aegis/_turn_from_stone

execute if score @s hades.ticks_stoned matches 40.. at @s run function hades:items/aegis/stoned_lvl/3

scoreboard players remove @s hades.ticks_stoned 1
execute if score @s hades.ticks_stoned matches ..-1 run scoreboard players reset @s hades.ticks_stoned