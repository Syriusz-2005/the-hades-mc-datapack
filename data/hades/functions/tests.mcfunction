summon allay ~ ~ ~ { ActiveEffects: [ {Id: 14, ShowParticles: false, Amplifier: 1, Duration: 2147483647 } ], Passengers: [ { id: "minecraft:skeleton_horse", Tags: ["hades_thunder_horse"], Passengers: [{ id: "minecraft:phantom" }] } ], Tags: [ "hades_thunder_horse_holder" ], Silent: true, Invulnerable: true, Attributes: [ { Name: "minecraft:generic.flying_speed", Base: 0.18} ] }

summon minecraft:marker ~ ~ ~ {Tags:["hades.fountain_soul_sand_provider"]}

give @s chest{BlockEntityTag:{LootTable: "hades:chests/pilgrims_path_temple/underground/treasure"}}


summon villager ~ ~ ~ {ArmorItems:[ {id: "minecraft:acacia_door", Count: 1b} ],VillagerData: {type: "minecraft:swamp", level: 5, profession: "minecraft:cleric"},Offers: { Recipes: [ {buy: { id: "minecraft:echo_shard", Count: 5b }, maxUses: 99999, rewardExp: true, xp: 100, sell: { id: "minecraft:enchanted_book", Count: 1b, tag: {Enchantments: [ {id: "minecraft:swift_sneak", lvl: 3 } ]}}}, { buy: { id: "minecraft:echo_shard", Count: 1}, xp: 100, sell: { id: "minecraft:blackstone", Count: 64}, maxUses: 9999}, {buy: { id: "minecraft:echo_shard", Count: 1}, maxUses: 99999, xp: 30, sell: { id: "minecraft:glow_berries", Count: 64}} ]}}


give @s enchanted_book{Enchantments:[{id: "sharpness", lvl: 10}]}