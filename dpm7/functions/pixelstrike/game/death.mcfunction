execute if entity @s[team=psCT] run scoreboard players remove CTplayers psDummy 1
execute if entity @s[team=psT] run scoreboard players remove Tplayers psDummy 1

scoreboard players set @s psHealth 100

execute at @s run particle dust 0.6 0.1 0.1 2.0 ~ ~1 ~ 0.25 0.5 0.25 0 15
execute at @s run playsound minecraft:entity.player.death master @a ~ ~ ~ 0.5 1

execute if entity @s[nbt={Inventory:[{id:"minecraft:tnt",tag:{psBomb:1}}]}] run summon item ~ ~ ~ {Item:{id:"minecraft:tnt",Count:1b,tag:{display:{Name:'{"text":"Bomb","color":"gold","bold":true}',Lore:['{"text":"The bomb.","color":"dark_gray"}']},psBomb:1,HideFlags:6,Unbreakable:1b,AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:0,Operation:0,UUIDLeast:400931,UUIDMost:732240,Slot:"offhand"}}}
execute if entity @s[nbt={Inventory:[{id:"minecraft:tnt",tag:{psBomb:1}}]}] at @s run data merge entity @e[type=item,nbt={Item:{id:"minecraft:tnt",Count:1b,tag:{psBomb:1}}},limit=1,sort=nearest] {Age:-32768,PickupDelay:32767}
execute if entity @s[nbt={Inventory:[{id:"minecraft:tnt",tag:{psBomb:1}}]}] run clear @s tnt{psBomb:1}

clear @s
gamemode spectator @s