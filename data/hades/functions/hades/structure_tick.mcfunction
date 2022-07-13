
execute as @e[tag=elysium_tower_storm] at @s run function hades:hades/as_elysium_tower_storm

execute as @e[tag=elysium_tower_storm_north] at @s run function hades:hades/as_north_elysium_tower
execute as @e[tag=elysium_tower_storm_south] at @s run function hades:hades/as_south_elysium_tower
execute as @e[tag=elysium_tower_storm_east] at @s run function hades:hades/as_east_elysium_tower
execute as @e[tag=elysium_tower_storm_west] at @s run function hades:hades/as_west_elysium_tower

execute as @e[tag=hades_elysium_tower_particle_marker] at @s run function hades:hades/show_elysium_tower_particle

function hades:hades/elysium_tower/apply_wind