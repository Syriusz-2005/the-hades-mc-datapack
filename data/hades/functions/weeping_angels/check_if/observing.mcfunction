execute as @p anchored eyes run summon area_effect_cloud ^ ^ ^1 {Tags:[quantum_lock]}
#execute as @p anchored eyes run summon armor_stand ^ ^ ^1 {Tags:[quantum_lock],NoGravity:true}

execute at @p anchored eyes facing entity @s eyes positioned ^ ^ ^1 if entity @e[tag=quantum_lock,distance=..1.25] run tag @s add observed
execute at @p anchored eyes facing entity @s feet positioned ^ ^ ^1 if entity @e[tag=quantum_lock,distance=..1.25] run tag @s add observed

#TODO check if ray tracing needed
execute if entity @s[tag=observed] if entity @s[distance=8..64] at @p anchored eyes run function hades:weeping_angels/check_if/behind_wall


#execute at @p anchored eyes facing entity @s eyes positioned ^ ^ ^1 run summon armor_stand ~ ~ ~ {NoGravity:1b}
#execute at @p anchored eyes facing entity @s feet positioned ^ ^ ^1 if entity @e[tag=quantum_lock,distance=..1] run effect give @s glowing 1