execute if entity @p[distance=..55] run data modify entity @s AngryAt set from entity @p UUID
execute if entity @p[distance=..55] run data modify entity @s AngerTime set value 200

execute unless entity @e[sort=nearest,limit=1,tag=hades.fountain_teleport_provider,distance=..30] run tp @e[tag=hades.fountain_teleport_provider,sort=nearest,limit=1]

execute if score %timer_160_tick hades_timers matches 1 run function hades:bosses/cerber/roar

execute if block ~ ~ ~ water run tp ~ ~0.4 ~
execute if block ~-0.3 ~ ~ water run data modify entity @s Motion[2] set value 0.1d
execute if block ~0.3 ~ ~ water run data modify entity @s Motion[2] set value -0.1d
execute if block ~ ~ ~-0.3 water run data modify entity @s Motion[0] set value 0.1d
execute if block ~ ~ ~0.3 water run data modify entity @s Motion[0] set value -0.1d

execute unless entity @s[nbt={Passengers:[{id:"minecraft:zombie"}]}] run function hades:bosses/cerber/replace