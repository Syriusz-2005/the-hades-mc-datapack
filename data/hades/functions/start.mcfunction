
#needed for the datapack to work properly
gamerule doImmediateRespawn true

scoreboard objectives add death deathCount
scoreboard objectives add hades_timers dummy
scoreboard objectives add hades_thunder_state dummy
scoreboard objectives add hades_wind_timer dummy

#declare score_holder %timer_10_tick hades_timers
#declare score_holder %timer_100_tick hades_timers
#declare score_holder %timer_160_tick hades_timers
#declare score_holder %%timer_500_tick hades_timers

tellraw @a {"text": "The hades datapack is enabled!"}