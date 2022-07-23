#spawning ray
execute if score %timer_100_tick hades_timers matches 50 run summon area_effect_cloud ~ ~ ~ {Duration:30,Tags:[ "hades_elysium_tower_particle_marker", "hades_started_west" ]}

execute as @e[tag=hades_elysium_tower_particle_marker,tag=hades_started_west] at @s facing entity @e[tag=elysium_tower_storm_south,sort=nearest,limit=1,distance=..90] eyes run tp @s ^ ^ ^1