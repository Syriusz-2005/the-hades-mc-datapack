scoreboard players set @s hades.pipe_usage_cap 160

playsound hades:wooden_pipe master @a[distance=..50] ~ ~ ~ 1 1 1


scoreboard players set @e[tag=hades.cerber,distance=..13] hades.slowed_cerberus_timer 100
execute as @e[tag=hades.cerber,distance=..13] run effect give @s glowing 5 1
execute as @e[tag=hades.cerber,distance=..13] run effect give @s slowness 5 2


execute if entity @e[tag=hades.cerber,distance=..13] run advancement grant @s only hades:use_pipe_near_cerber