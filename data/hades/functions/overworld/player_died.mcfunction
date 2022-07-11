scoreboard players reset @s death
execute at @s in hades:hades run tp @s ~ 320 ~
effect give @s slow_falling 40 1 false

title @s actionbar {"text": "Expect something worse than death...", "color": "red", "bold": true}

execute at @s in hades:hades run function hades:overworld/find_save_spot