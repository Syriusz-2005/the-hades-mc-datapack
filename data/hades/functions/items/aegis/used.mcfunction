# Activated by events/used_shield advancement
advancement revoke @s only hades:events/used_aegis

scoreboard players set @s hades.aegis_range 128
execute anchored eyes positioned ^ ^ ^0.5 run function hades:items/aegis/gorgona_ray