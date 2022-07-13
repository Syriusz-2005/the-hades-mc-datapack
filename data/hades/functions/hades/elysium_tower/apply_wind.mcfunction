execute as @a[scores={hades_wind_timer=-2147483648..2147483647}] at @s if entity @e[tag=elysium_tower_storm_north,distance=..50] run scoreboard players add @s hades_wind_timer 1

execute as @a[scores={hades_wind_timer=0..}] run effect give @s levitation 1 0

execute as @a[scores={hades_wind_timer=1}] at @s run summon armor_stand ~ ~ ~ {Tags:["hades_wind_vector"],Motion:[ 0.0d, 1.0d, 0.2d ],Invisible:true,Invulnerable:true}
execute as @a[scores={hades_wind_timer=0..}] at @s rotated as @s positioned as @e[tag=hades_wind_vector,sort=nearest,limit=1,distance=..5] run tp @s ~ ~ ~

execute as @a[scores={hades_wind_timer=25..}] at @s run kill @e[type=armor_stand,tag=hades_wind_vector,sort=nearest,limit=1,distance=..5]
execute as @a[scores={hades_wind_timer=25..}] run effect clear @s levitation
execute as @a[scores={hades_wind_timer=25..}] run scoreboard players reset @s hades_thunder_state