

execute as @a[scores={hades.carrot_on_a_stick_used=1..,hades.pipe_usage_cap=..2},nbt={SelectedItem:{ tag: {Tag: "hades.wodden_pipe"}, id: "minecraft:carrot_on_a_stick", Count: 1b}}] at @s run function hades:items/used_pipe
execute as @a[scores={hades.carrot_on_a_stick_used=1..}] run scoreboard players reset @s hades.carrot_on_a_stick_used

scoreboard players remove @a[scores={hades.pipe_usage_cap=1..}] hades.pipe_usage_cap 1