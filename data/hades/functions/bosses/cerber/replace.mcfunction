
kill @e[distance=..1,tag=hades.cerberus_zombie_ai]
execute positioned ~ ~1 ~ run function hades:bosses/cerber/summon


tp @s ~ 0 ~
data modify entity @e[tag=hades.cerber,sort=nearest,limit=1,distance=..2] Motion set from entity @s Motion

kill @s
