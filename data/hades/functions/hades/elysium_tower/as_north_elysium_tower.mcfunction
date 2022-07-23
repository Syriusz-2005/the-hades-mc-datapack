
#spawning ray
execute if score %timer_100_tick hades_timers matches 25 run summon area_effect_cloud ~ ~ ~ {Duration:30,Tags:[ "hades_elysium_tower_particle_marker", "hades_started_north" ]}

execute as @e[tag=hades_elysium_tower_particle_marker,tag=hades_started_north] at @s facing entity @e[tag=elysium_tower_storm_west,sort=nearest,limit=1,distance=..90] eyes run tp @s ^ ^ ^1


#elysium tower thunder operations
execute if entity @a[distance=..80,gamemode=!spectator] unless score @s hades_thunder_state matches 10000.. run scoreboard players add @s hades_thunder_state 1
execute unless entity @a[distance=..80,gamemode=!spectator] if score @s hades_thunder_state matches 1.. run scoreboard players remove @s hades_thunder_state 1

execute if score @s hades_thunder_state matches 1200.. if score %timer_100_tick hades_timers matches 50 run scoreboard players set @a[distance=..40,gamemode=survival] hades_wind_timer 0

execute if score @s hades_thunder_state matches 1200.. if score %timer_160_tick hades_timers matches 1 as @e[tag=hades_lightning_marker] at @s run summon lightning_bolt ~ ~ ~

execute if score @s hades_thunder_state matches 1200.. if score %timer_160_tick hades_timers matches 130 as @a[distance=..70] at @s run summon area_effect_cloud ~ ~ ~ {Duration:40,Tags:["hades_lightning_marker"]}
execute if score @s hades_thunder_state matches 1200.. if score %timer_160_tick hades_timers matches 130 as @e[distance=..70] at @s run particle enchant ~ ~ ~ 0 1 0 1 400 normal