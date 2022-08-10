execute if entity @p[distance=..55] run data modify entity @s AngryAt set from entity @p UUID
execute if entity @p[distance=..55] run data modify entity @s AngerTime set value 200

execute unless entity @e[sort=nearest,limit=1,tag=hades.fountain_teleport_provider,distance=..24] at @e[tag=hades.fountain_teleport_provider,sort=nearest,limit=1] run tp ~ ~1 ~

execute if score %timer_160_tick hades_timers matches 1 run function hades:bosses/cerber/roar

execute if block ~ ~ ~ water run data modify entity @s Motion[1] set value 0.2d
execute if block ~-0.3 ~ ~ water run data modify entity @s Motion[2] set value 0.1d
execute if block ~0.3 ~ ~ water run data modify entity @s Motion[0] set value -0.2d
execute if block ~ ~ ~-0.3 water run data modify entity @s Motion[0] set value -0.1d
execute if block ~ ~ ~0.3 water run data modify entity @s Motion[0] set value 0.1d

execute unless entity @s[nbt={Passengers:[{Tags: [ "hades.cerberus_zombie_ai" ]}]}] run function hades:bosses/cerber/replace

execute if entity @s[scores={hades.slowed_cerberus_timer=1..}] run scoreboard players remove @s hades.slowed_cerberus_timer 1
execute unless entity @s[scores={hades.slowed_cerberus_timer=-2147483648..2147483647}] run scoreboard players set @s hades.slowed_cerberus_timer 0

