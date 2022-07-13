



execute as @e[tag=elysium_tower_storm_north,sort=nearest,limit=1] if score @s hades_thunder_state matches 1200.. run particle minecraft:dust 1 0.569 0.008 10 ~ ~ ~ 1 1 1 0 6 force
execute as @e[tag=elysium_tower_storm_north,sort=nearest,limit=1] if score @s hades_thunder_state matches 1200.. run particle minecraft:dust 0.38 0.38 0.38 4 ~ ~ ~ 1 1 1 0 4 force
execute as @e[tag=elysium_tower_storm_north,sort=nearest,limit=1] unless score @s hades_thunder_state matches 1200.. run particle minecraft:dust 0.38 0.38 0.38 4 ~ ~ ~ 1 1 1 0 8 force