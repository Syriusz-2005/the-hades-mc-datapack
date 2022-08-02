execute if entity @p[distance=..50] run data modify entity @s AngryAt set from entity @p UUID
execute if entity @p[distance=..50] run data modify entity @s AngerTime set value 200


execute if score %timer_160_tick hades_timers matches 1 run function hades:bosses/cerber/roar