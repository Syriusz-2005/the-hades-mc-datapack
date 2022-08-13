#declare tag hades.fountain_soul_sand_provider "Is used to add souls sand in the bottom of the fountain"
#declare tag hades.fountain_teleport_provider "It is used to add teleport functionality for the pilgrim's path temple"
#declare tag hades.cerber
#declare tag hades.cerberus_spawner "It is used to spawn the cerberus in the temple"
#declare tag hades.cerberus_zombie_ai
#declare tag hades.gorgona_caster

#needed for the datapack to work properly
gamerule doImmediateRespawn true

scoreboard objectives add death deathCount
scoreboard objectives add hades_timers dummy
scoreboard objectives add hades_thunder_state dummy
scoreboard objectives add hades_wind_timer dummy
scoreboard objectives add hades.teleport_timer dummy
scoreboard objectives add hades.carrot_on_a_stick_used used:carrot_on_a_stick
scoreboard objectives add hades.pipe_usage_cap dummy
scoreboard objectives add hades.slowed_cerberus_timer dummy

scoreboard objectives add hades.ticks_stoned dummy
scoreboard objectives add hades.time_without_cobol dummy

#declare score_holder %timer_10_tick hades_timers
#declare score_holder %timer_100_tick hades_timers
#declare score_holder %timer_160_tick hades_timers
#declare score_holder %timer_500_tick hades_timers

#declare tag/item hades.wodden_pipe

tellraw @a {"text": "The hades datapack is enabled!"}

#a place used in some stupid situations
execute in hades:hades run forceload add 0 0