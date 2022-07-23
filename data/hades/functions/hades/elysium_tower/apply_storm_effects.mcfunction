
#declare tag hades_elysium_tower_particle_marker Is used to tag the elysium tower particle spawner"

execute as @e[tag=hades_elysium_tower_particle_marker,distance=..50] at @s as @a[distance=..4] run effect give @s instant_damage 1 0 true

execute as @e[type=phantom,tag=hades_thunder_horse_holder,nbt=!{Passengers: [{Tags: ["hades_thunder_horse"]}]}] run kill @s