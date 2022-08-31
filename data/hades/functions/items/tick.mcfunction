execute as @e[scores={hades.ticks_stoned=0..}] run function hades:items/aegis/loop_stun

execute as @a unless entity @s[scores={hades.pipe_usage_cap=-2147483648..2147483647}] run scoreboard players set @s hades.pipe_usage_cap 0

execute as @a[scores={hades.carrot_on_a_stick_used=1..,hades.pipe_usage_cap=..2},nbt={SelectedItem:{ tag: {Tag: "hades.wodden_pipe"}, id: "minecraft:carrot_on_a_stick", Count: 1b}}] at @s run function hades:items/used_pipe
execute as @a[scores={hades.carrot_on_a_stick_used=1..}] run scoreboard players reset @s hades.carrot_on_a_stick_used

scoreboard players remove @a[scores={hades.pipe_usage_cap=1..}] hades.pipe_usage_cap 1