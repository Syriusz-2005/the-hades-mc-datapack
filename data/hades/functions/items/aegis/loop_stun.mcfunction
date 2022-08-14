execute if score @s hades.ticks_stoned matches 0..40 run function hades:items/aegis/stoned_lvl/1

execute if score @s hades.ticks_stoned matches 41..70 run function hades:items/aegis/stoned_lvl/2

# Increment is by 3 so we need to detect that gap
execute if score @s hades.ticks_stoned matches 71..77 at @s unless entity @e[distance=..0.2,tag=hades.gorgona_victim] run function hades:items/aegis/_turn_into_stone
execute if score @s hades.ticks_stoned matches 70 at @s run function hades:items/aegis/_turn_from_stone

execute if score @s hades.ticks_stoned matches 70.. at @s run function hades:items/aegis/stoned_lvl/3

scoreboard players remove @s hades.ticks_stoned 1
execute if score @s hades.ticks_stoned matches ..-1 run scoreboard players reset @s hades.ticks_stoned