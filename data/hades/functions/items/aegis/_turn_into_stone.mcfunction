data modify entity @s NoAI set value true

execute if predicate hades:has_no_helmet run item replace entity @s armor.head with player_head{Tag:"hades.gorgona_victim",SkullOwner:{Id:[I;385406330,-1913565993,-1339969910,308132813],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjYwZjdlYWRkMWJmYjAwZDY3NGJhMGQzMjMzNzlkMDczMzg0Nzk1OTQ0ZjMwNTc3YmJlODY4ZjdiYWIwYjYxYSJ9fX0="}]}}}

attribute @s generic.knockback_resistance base set 1