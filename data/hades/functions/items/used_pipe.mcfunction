scoreboard players set @s hades.pipe_usage_cap 160

playsound ui.toast.challenge_complete master @a ~ ~ ~ 1 1 1


execute as @e[tag=hades.cerber,distance=..13] run effect give @s glowing 5 1
execute as @e[tag=hades.cerber,distance=..13] run effect give @s slowness 5 3

execute if entity @e[tag=hades.cerber,distance=..13] run advancement grant @s only hades:use_pipe_near_cerber