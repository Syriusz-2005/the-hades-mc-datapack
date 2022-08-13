execute anchored eyes run summon area_effect_cloud ^ ^ ^1 {Tags:[hades.gorgona_lock]}

#Test
#particle end_rod ^ ^ ^1
#execute anchored eyes facing entity @p[tag=hades.gorgona_caster] eyes positioned ^ ^ ^1 run particle end_rod ~ ~ ~

execute anchored eyes facing entity @p[tag=hades.gorgona_caster] eyes positioned ^ ^ ^1 if entity @e[tag=hades.gorgona_lock,distance=..1.25] run tag @s add hades.observing
execute anchored eyes facing entity @p[tag=hades.gorgona_caster] feet positioned ^ ^ ^1 if entity @e[tag=hades.gorgona_lock,distance=..1.25] run tag @s add hades.observing

scoreboard players add @s[tag=hades.observing] hades.ticks_stoned 3
tag @s remove hades.observing