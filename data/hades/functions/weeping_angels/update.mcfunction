tag @e[tag=weeping_angel] remove observed
execute as @e[tag=weeping_angel] at @s run execute at @a[distance=..64,gamemode=!creative,gamemode=!spectator] run function hades:weeping_angels/check_if/possible_observing

#effect give @e[tag=weeping_angel,tag=observed] glowing 1 0 true
execute as @e[tag=weeping_angel,tag=observed] unless data entity @s NoAI run function hades:weeping_angels/when/locked
execute as @e[tag=weeping_angel,tag=!observed] if data entity @s NoAI run function hades:weeping_angels/when/unlocked
#execute as @e[tag=weeping_angel,tag=observed,nbt={NoAI:false}] run function hades:weeping_angels/while/locked
#execute as @e[tag=weeping_angel,tag=!observed,nbt={NoAI:true}] run function hades:weeping_angels/while/unlocked
execute as @e[tag=weeping_angel,nbt={InWaterTime:200}] run data modify entity @s InWaterTime set value -1