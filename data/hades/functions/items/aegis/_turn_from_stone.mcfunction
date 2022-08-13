data modify entity @s NoAI set value false

execute if predicate hades:has_stone_head run item replace entity @s armor.head with air

attribute @s generic.knockback_resistance base set 0