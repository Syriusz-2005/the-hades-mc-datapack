
#needed for the datapack to work properly
gamerule doImmediateRespawn true

scoreboard objectives add death deathCount
scoreboard objectives add hades_timers dummy

tellraw @a {"text": "The hades datapack is enabled!"}