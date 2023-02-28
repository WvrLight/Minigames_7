function dpm7:pvp/class/harbinger/horse_cooldown

summon skeleton_horse ~ ~ ~ {Silent:1b,Invulnerable:1b,NoAI:1b,Variant:516,Tags:["hHorse","hHorseNew"],SaddleItem:{},ArmorItem:{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:16777215}}}}
tp @e[tag=hHorseNew,sort=nearest,limit=1] @s
scoreboard players operation @e[tag=hHorseNew,sort=nearest,limit=1] id = @s id
ride @s mount @e[tag=hHorseNew,sort=nearest,limit=1]
scoreboard players set @e[tag=hHorseNew,sort=nearest,limit=1] tick 19
tag @e[tag=hHorseNew,sort=nearest,limit=1] remove hHorseNew


playsound minecraft:entity.horse.angry master @a[distance=..15] ~ ~ ~ 1 0
playsound minecraft:entity.vex.death master @a[distance=..15] ~ ~ ~ 1 0
playsound minecraft:entity.ender_dragon.flap master @a[distance=..15] ~ ~ ~ 1 0
playsound minecraft:block.ender_chest.open master @a[distance=..15] ~ ~ ~ 1 0



tag @s add onHHorse

scoreboard players set @s rightClick 0