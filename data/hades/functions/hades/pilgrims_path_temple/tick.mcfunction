
execute as @a at @s if predicate hades:is_in_hades_dimension if entity @e[tag=hades.fountain_teleport_provider,distance=..12] if block ~ ~ ~ water run scoreboard players add @s hades.teleport_timer 1


#reseting teleport timer
execute as @a at @s unless predicate hades:is_in_hades_dimension run scoreboard players reset @s hades.teleport_timer
execute as @a at @s if predicate hades:is_in_hades_dimension unless entity @e[tag=hades.fountain_teleport_provider,distance=..12] run scoreboard players reset @s hades.teleport_timer
execute as @a at @s if predicate hades:is_in_hades_dimension if entity @e[tag=hades.fountain_teleport_provider,distance=..12] unless block ~ ~ ~ water run scoreboard players reset @s hades.teleport_timer


execute as @a[scores={hades.teleport_timer=40..}] at @s in minecraft:overworld run tp ~ -52 ~