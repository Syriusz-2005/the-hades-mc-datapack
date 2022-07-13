scoreboard players add @a[scores={hades_wind_timer=-2147483648..2147483647}] hades_wind_timer 1
execute as @a[scores={hades_wind_timer=0..}] run effect give @s levitation 1 0

execute as @a[scores={hades_wind_timer=0..25}] at @s run tp @s ~ ~ ~0.1

execute as @a[scores={hades_wind_timer=25..}] run effect clear @s levitation
execute as @a[scores={hades_wind_timer=25..}] run scoreboard players reset @s hades_thunder_state