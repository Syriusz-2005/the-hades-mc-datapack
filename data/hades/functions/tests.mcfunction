summon allay ~ ~ ~ { ActiveEffects: [ {Id: 14, ShowParticles: false, Amplifier: 1, Duration: 2147483647 } ], Passengers: [ { id: "minecraft:skeleton_horse", Tags: ["hades_thunder_horse"], Passengers: [{ id: "minecraft:phantom" }] } ], Tags: [ "hades_thunder_horse_holder" ], Silent: true, Invulnerable: true, Attributes: [ { Name: "minecraft:generic.flying_speed", Base: 0.18} ] }

summon minecraft:marker ~ ~ ~ {Tags:["hades.fountain_soul_sand_provider"]}

give @s chest{BlockEntityTag:{LootTable: "hades:chests/pilgrims_path_temple/underground/treasure"}}