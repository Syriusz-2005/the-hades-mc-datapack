effect give @s resistance 15 6 true
execute at @s run spawnpoint @s ~ ~ ~
execute at @s in hades:hades run tp @s ~ 320 ~
execute at @s run spawnpoint @s ~ ~ ~

execute at @s in hades:hades run summon minecraft:area_effect_cloud ~ ~ ~ { Duration: 300, Tags: ["firework_marker"]}

title @s actionbar {"text": "Expect something worse than death...", "color": "red", "bold": true}