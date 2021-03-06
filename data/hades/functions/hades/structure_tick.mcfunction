
execute as @e[tag=elysium_tower_storm] at @s run function hades:hades/elysium_tower/as_elysium_tower_storm

execute as @e[tag=elysium_tower_storm_north] at @s if entity @p[distance=..130] run function hades:hades/elysium_tower/as_north_elysium_tower
execute as @e[tag=elysium_tower_storm_south] at @s if entity @p[distance=..130] run function hades:hades/elysium_tower/as_south_elysium_tower
execute as @e[tag=elysium_tower_storm_east] at @s if entity @p[distance=..130] run function hades:hades/elysium_tower/as_east_elysium_tower
execute as @e[tag=elysium_tower_storm_west] at @s if entity @p[distance=..130] run function hades:hades/elysium_tower/as_west_elysium_tower

execute as @e[tag=hades_elysium_tower_particle_marker] at @s run function hades:hades/show_elysium_tower_particle

execute as @e[tag=elysium_tower_storm_north] at @s if score @s hades_thunder_state matches 1200.. run function hades:hades/elysium_tower/apply_storm_effects

