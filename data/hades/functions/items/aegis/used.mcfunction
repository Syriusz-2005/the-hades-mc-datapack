# Activated by events/used_shield advancement
advancement revoke @s only hades:events/used_shield

execute if entity @s[nbt={SelectedItem:{tag:{Tags:["aegis"]}}}] run scoreboard players set @s Range 128
execute if entity @s[nbt={SelectedItem:{tag:{Tags:["aegis"]}}}] anchored eyes positioned ^ ^ ^0.5 run function hades:items/aegis/gorgona_ray