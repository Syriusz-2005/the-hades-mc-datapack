
execute as @a at @s if predicate hades:is_in_hades_dimension if entity @e[tag=hades.fountain_teleport_provider,distance=..14] if block ~ ~ ~ water run scoreboard players add @s hades.teleport_timer 1


#reseting teleport timer
execute as @a at @s unless predicate hades:is_in_hades_dimension run scoreboard players reset @s hades.teleport_timer
execute as @a at @s if predicate hades:is_in_hades_dimension unless entity @e[tag=hades.fountain_teleport_provider,distance=..14] run scoreboard players reset @s hades.teleport_timer
execute as @a at @s if predicate hades:is_in_hades_dimension if entity @e[tag=hades.fountain_teleport_provider,distance=..14] unless block ~ ~ ~ water run scoreboard players reset @s hades.teleport_timer


#need to wait 80 ticks to be teleported
execute as @a[scores={hades.teleport_timer=80..}] run advancement grant @s only hades:go_back_to_overworld
execute as @a[scores={hades.teleport_timer=80..}] at @s in minecraft:overworld run tp ~ -50 ~
execute as @a[scores={hades.teleport_timer=80..}] run effect give @s levitation 6 255 true
execute at @a[scores={hades.teleport_timer=1..}] run particle witch ~ ~ ~ 0.4 0 0.4 0 1 normal


#spawning cerberus
execute as @e[tag=hades.cerberus_spawner] at @s if predicate hades:is_in_hades_dimension run function hades:bosses/cerber/summon
execute as @e[tag=hades.cerberus_spawner] run kill @s