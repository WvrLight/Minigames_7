playsound minecraft:entity.generic.explode master @a[distance=..30] ~ ~ ~ 1 0

particle explosion ~ ~1 ~ 3 3 3 0 30 normal
effect clear @s levitation
effect give @s instant_damage 1 0 true
effect give @a[tag=cclashPlaying,distance=..7,scores={cclashAerruption=2..,cclashAerruption=0}] resistance 1 0 true
effect give @a[tag=cclashPlaying,distance=..7,scores={cclashAerruption=2..,cclashAerruption=0}] instant_damage 1 0 true
effect give @a[tag=cclashPlaying,distance=..3,scores={cclashAerruption=2..,cclashAerruption=0}] instant_damage 1 2 true
effect give @a[tag=cclashPlaying,distance=..4,scores={cclashAerruption=2..,cclashAerruption=0}] poison 3 1 true
effect give @a[tag=cclashPlaying,distance=..7,scores={cclashAerruption=2..,cclashAerruption=0}] slowness 4 1 true


summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["cclashDummy","cclashAerruptSpikes","cclashAerruptSpikesNew"]}
summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["cclashDummy","cclashAerruptSpikes","cclashAerruptSpikesNew"]}
summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["cclashDummy","cclashAerruptSpikes","cclashAerruptSpikesNew"]}
summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["cclashDummy","cclashAerruptSpikes","cclashAerruptSpikesNew"]}
summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["cclashDummy","cclashAerruptSpikes","cclashAerruptSpikesNew"]}

scoreboard players set @e[tag=cclashAerruptSpikesNew] cclashDummy 1
scoreboard players set @e[tag=cclashAerruptSpikesNew,scores={cclashDummy=1},limit=1] cclashDummy 100
scoreboard players set @e[tag=cclashAerruptSpikesNew,scores={cclashDummy=1},limit=1] cclashDummy 105
scoreboard players set @e[tag=cclashAerruptSpikesNew,scores={cclashDummy=1},limit=1] cclashDummy 110
scoreboard players set @e[tag=cclashAerruptSpikesNew,scores={cclashDummy=1},limit=1] cclashDummy 115
scoreboard players set @e[tag=cclashAerruptSpikesNew,scores={cclashDummy=1},limit=1] cclashDummy 120

spreadplayers ~ ~ 5 5 false @e[tag=cclashAerruptSpikesNew]

execute as @e[tag=cclashAerruptSpikesNew] at @s run fill ~ ~ ~ ~ ~2 ~ packed_ice replace air
execute as @e[tag=cclashAerruptSpikesNew] at @s run playsound minecraft:block.glass.break master @a[distance=..10] ~ ~ ~ 1 0.1
execute as @e[tag=cclashAerruptSpikesNew] at @s run particle block ice ~ ~1 ~ 0.4 1 0.4 0 60 normal

summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:pointed_dripstone",Properties:{thickness:"tip",vertical_direction:"down",waterlogged:"true"}},HasVisualFire:1b,Time:60,DropItem:0b,HurtEntities:1b,FallHurtMax:2,FallHurtAmount:2f,Motion:[0.25,0.5,0.0],Tags:["cclashAerruptDebri"]}
summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:pointed_dripstone",Properties:{thickness:"tip",vertical_direction:"down",waterlogged:"true"}},HasVisualFire:1b,Time:60,DropItem:0b,HurtEntities:1b,FallHurtMax:2,FallHurtAmount:2f,Motion:[-0.25,0.4,0.0],Tags:["cclashAerruptDebri"]}
summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:pointed_dripstone",Properties:{thickness:"tip",vertical_direction:"down",waterlogged:"true"}},HasVisualFire:1b,Time:60,DropItem:0b,HurtEntities:1b,FallHurtMax:2,FallHurtAmount:2f,Motion:[0.25,0.45,0.25],Tags:["cclashAerruptDebri"]}
summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:pointed_dripstone",Properties:{thickness:"tip",vertical_direction:"down",waterlogged:"true"}},HasVisualFire:1b,Time:60,DropItem:0b,HurtEntities:1b,FallHurtMax:2,FallHurtAmount:2f,Motion:[-0.25,0.55,0.25],Tags:["cclashAerruptDebri"]}
summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:pointed_dripstone",Properties:{thickness:"tip",vertical_direction:"down",waterlogged:"true"}},HasVisualFire:1b,Time:60,DropItem:0b,HurtEntities:1b,FallHurtMax:2,FallHurtAmount:2f,Motion:[0.25,0.6,-0.25],Tags:["cclashAerruptDebri"]}
summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:pointed_dripstone",Properties:{thickness:"tip",vertical_direction:"down",waterlogged:"true"}},HasVisualFire:1b,Time:60,DropItem:0b,HurtEntities:1b,FallHurtMax:2,FallHurtAmount:2f,Motion:[-0.25,0.45,-0.25],Tags:["cclashAerruptDebri"]}

summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:pointed_dripstone",Properties:{thickness:"tip",vertical_direction:"down",waterlogged:"true"}},HasVisualFire:1b,Time:60,DropItem:0b,HurtEntities:1b,FallHurtMax:2,FallHurtAmount:2f,Motion:[0.15,0.5,0.0],Tags:["cclashAerruptDebri"]}
summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:pointed_dripstone",Properties:{thickness:"tip",vertical_direction:"down",waterlogged:"true"}},HasVisualFire:1b,Time:60,DropItem:0b,HurtEntities:1b,FallHurtMax:2,FallHurtAmount:2f,Motion:[-0.15,0.55,0.0],Tags:["cclashAerruptDebri"]}
summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:pointed_dripstone",Properties:{thickness:"tip",vertical_direction:"down",waterlogged:"true"}},HasVisualFire:1b,Time:60,DropItem:0b,HurtEntities:1b,FallHurtMax:2,FallHurtAmount:2f,Motion:[0.15,0.65,0.15],Tags:["cclashAerruptDebri"]}
summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:pointed_dripstone",Properties:{thickness:"tip",vertical_direction:"down",waterlogged:"true"}},HasVisualFire:1b,Time:60,DropItem:0b,HurtEntities:1b,FallHurtMax:2,FallHurtAmount:2f,Motion:[-0.15,0.35,0.15],Tags:["cclashAerruptDebri"]}
summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:pointed_dripstone",Properties:{thickness:"tip",vertical_direction:"down",waterlogged:"true"}},HasVisualFire:1b,Time:60,DropItem:0b,HurtEntities:1b,FallHurtMax:2,FallHurtAmount:2f,Motion:[0.15,0.4,-0.15],Tags:["cclashAerruptDebri"]}
summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:pointed_dripstone",Properties:{thickness:"tip",vertical_direction:"down",waterlogged:"true"}},HasVisualFire:1b,Time:60,DropItem:0b,HurtEntities:1b,FallHurtMax:2,FallHurtAmount:2f,Motion:[-0.15,0.5,-0.15],Tags:["cclashAerruptDebri"]}


tag @e[tag=cclashAerruptSpikesNew] remove cclashAerruptSpikesNew
