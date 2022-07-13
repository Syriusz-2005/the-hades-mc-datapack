
#no storm
execute if entity @p[distance=..115] run particle minecraft:electric_spark ~ ~ ~ 0.6 1 0.6 0 10 force

#storm particles
execute as @e[tag=elysium_tower_storm_north,sort=nearest,limit=1] if score @s hades_thunder_state matches 1200.. run particle minecraft:dust 1 0.569 0.008 10 ~ ~ ~ 1 1 1 0.1 6 force


