
#spawning ray
execute if score %timer_100_tick hades_timers matches 75 run summon area_effect_cloud ~ ~ ~ {Duration:30,Tags:[ "hades_elysium_tower_particle_marker", "hades_started_south" ]}

execute as @e[tag=hades_elysium_tower_particle_marker,tag=hades_started_south] at @s facing entity @e[tag=elysium_tower_storm_east,sort=nearest,limit=1] eyes run tp @s ^ ^ ^1