
#needed for the datapack to work properly
gamerule doImmediateRespawn true

scoreboard objectives add death deathCount
scoreboard objectives add hades_timers dummy
scoreboard objectives add hades_thunder_state dummy

tellraw @a {"text": "The hades datapack is enabled!"}