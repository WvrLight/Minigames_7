execute at @s run summon marker ~ ~ ~ {Tags:["psSpawnTP"]}
execute if entity @s[team=psCT] as @e[tag=psSpawnTP] run data modify entity @s Pos[1] set from entity @e[tag=psCTspawn,limit=1] Pos[1]
execute if entity @s[team=psT] as @e[tag=psSpawnTP] run data modify entity @s Pos[1] set from entity @e[tag=psTspawn,limit=1] Pos[1]
tp @s @e[tag=psSpawnTP,limit=1]
kill @e[tag=psSpawnTP]

gamemode adventure @s
attribute @s minecraft:generic.movement_speed base set 0.13
scoreboard players set @s[scores={psHealth=..100}] psHealth 100
scoreboard players reset @s rightClick
scoreboard players set @s spray 0
scoreboard players set @s firing 0
#scoreboard players set @s firinghold 0
scoreboard players set @s firinghold2 1
#scoreboard players set @s firinghold3 0
scoreboard players set @s raycast_hit 0
scoreboard players set @s sniperR 0
scoreboard players set @s shotgunR 0
scoreboard players set @s pistolR 0
scoreboard players set @s pistolR2 0
scoreboard players set @s psAmmoMax2 12
scoreboard players set @s psPurchase 0
scoreboard players set @s psSneak 0
scoreboard players set @s psStep 0
scoreboard players set @s psNadeMax 0
scoreboard players set @s psReload 0
scoreboard players set @s psReload2 0
scoreboard players reset @s psBomb
execute if entity @s[nbt={Inventory:[{Slot:2b}]}] run scoreboard players add @s psNadeMax 1
execute if entity @s[nbt={Inventory:[{Slot:3b}]}] run scoreboard players add @s psNadeMax 1
execute if entity @s[nbt={Inventory:[{Slot:4b}]}] run scoreboard players add @s psNadeMax 1
execute if entity @s[nbt={Inventory:[{Slot:5b}]}] run scoreboard players add @s psNadeMax 1
execute as @s run function dpm7:pixelstrike/weapon/reload/reload_pistol_end
execute as @s if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{shotgun:1}}]}] run scoreboard players set @s psAmmo 8

#effect give @s slowness 15 137 true
#effect give @s jump_boost 15 137 true

clear @s tnt{psBomb:1}
clear @s carrot_on_a_stick{secondary:1}

item replace entity @s hotbar.1 with carrot_on_a_stick{display:{Name:'[{"text":"M1911","color":"yellow","bold":true},{"text":"(Pistol)","color":"yellow","bold":false}]',Lore:['{"text":"A trusty backup for any soldier.","color":"dark_gray"}']},HideFlags:6,Unbreakable:1b,CustomModelData:804,pistol:1,secondary:1,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:0,Operation:0,UUIDLeast:558746,UUIDMost:524216,Slot:"mainhand"},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:0,Operation:0,UUIDLeast:400931,UUIDMost:732240,Slot:"offhand"}]} 1

#give @s carrot_on_a_stick{display:{Name:'{"text":"Reload Secondary Weapon","color":"yellow","italic":false}'},secondary:1} 1