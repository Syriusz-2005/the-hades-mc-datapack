

#player has cobol tag manipulation
#if the player had cobol in it's inventory in the last 20 ticks, he'll have the hades.has_cobol_in_inventory tag
#declare tag hades.has_cobol_in_inventory "It is used to mark if the player had a cobol in it's inventory"
execute as @a[nbt={Inventory:[ { id: "minecraft:gold_nugget", tag: { Tag: "obol"}} ]}] run tag @s add hades.has_cobol_in_inventory
execute as @a[nbt=!{Inventory:[ { id: "minecraft:gold_nugget", tag: { Tag: "obol"}} ]},tag=hades.has_cobol_in_inventory] run scoreboard players add @s hades.time_without_cobol 1
execute as @a[scores={hades.time_without_cobol=20..}] run tag @s remove hades.has_cobol_in_inventory
execute as @a[scores={hades.time_without_cobol=20..}] run scoreboard players reset @s hades.time_without_cobol

#tests for cobol in inventory tag
#execute as @a[tag=hades.has_cobol_in_inventory] run tellraw @s "has a tag"
#execute as @a[tag=!hades.has_cobol_in_inventory] run tellraw @s "doesn't have a tag"

execute as @a[scores={death=1..},tag=hades.has_cobol_in_inventory] run tellraw @a "test"
execute as @a[scores={death=1..},tag=hades.has_cobol_in_inventory] run function hades:overworld/player_died
