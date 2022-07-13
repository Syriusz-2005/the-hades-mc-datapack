
#spawning ray
execute if score %timer_100_tick hades_timers matches 25 run summon area_effect_cloud ~ ~ ~ {Duration:30,Tags:[ "hades_elysium_tower_particle_marker", "hades_started_north" ]}

execute as @e[tag=hades_elysium_tower_particle_marker,tag=hades_started_north] at @s facing entity @e[tag=elysium_tower_storm_west,sort=nearest,limit=1] eyes run tp @s ^ ^ ^1

execute if entity @p[distance=..80] run scoreboard players add @s hades_thunder_state 1
execute unless entity @p[distance=..80] if score @s hades_thunder_state matches 1.. run scoreboard players remove @s hades_thunder_state 1