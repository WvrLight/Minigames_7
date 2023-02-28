execute if score @s cclashSpell matches 5 run give @s carrot_on_a_stick{display:{Name:'{"text":"Manipulate Earth","color":"white","bold":true,"italic":false}'},HideFlags:4,Unbreakable:1b,CustomModelData:4005,cclashMearth:1} 1
execute if score @s cclashSpell matches 13 run give @s carrot_on_a_stick{display:{Name:'{"text":"Frostball","color":"white","bold":true,"italic":false}'},HideFlags:4,Unbreakable:1b,CustomModelData:4006,cclashFball:1} 1
execute if score @s cclashSpell matches 23 if score @s cclashCasted matches 1 run give @s carrot_on_a_stick{display:{Name:'{"text":"Pyroball","color":"white","bold":true,"italic":false}'},HideFlags:4,Unbreakable:1b,CustomModelData:4007,cclashPball:1} 1

execute if score @s cclashSpell matches 10 run give @s carrot_on_a_stick{display:{Name:'{"text":"Rolling Boulder","color":"white","bold":true,"italic":false}'},HideFlags:4,Unbreakable:1b,CustomModelData:4008,cclashRboulder:1} 1
execute if score @s cclashSpell matches 26 run give @s carrot_on_a_stick{display:{Name:'{"text":"Flight","color":"white","bold":true,"italic":false}'},HideFlags:4,Unbreakable:1b,CustomModelData:4009,cclashFlight:1} 1
execute if score @s cclashSpell matches 46 run give @s carrot_on_a_stick{display:{Name:'{"text":"Flame Flash","color":"white","bold":true,"italic":false}'},HideFlags:4,Unbreakable:1b,CustomModelData:4010,cclashFflash:1} 1

execute if score @s cclashSpell matches 18 run give @s carrot_on_a_stick{display:{Name:'{"text":"Exhiliration","color":"white","bold":true,"italic":false}'},HideFlags:4,Unbreakable:1b,CustomModelData:4011,cclashExhil:1} 1
execute if score @s cclashSpell matches 36 run give @s carrot_on_a_stick{display:{Name:'{"text":"Sonic","color":"white","bold":true,"italic":false}'},HideFlags:4,Unbreakable:1b,CustomModelData:4012,cclashSonic:1} 1
execute if score @s cclashSpell matches 28 run give @s carrot_on_a_stick{display:{Name:'{"text":"Armor of Earth","color":"white","bold":true,"italic":false}'},HideFlags:4,Unbreakable:1b,CustomModelData:4013,cclashAearth:1} 1

execute if score @s cclashSpell matches 15 run give @s carrot_on_a_stick{display:{Name:'{"text":"Earthquake","color":"white","bold":true,"italic":false}'},HideFlags:4,Unbreakable:1b,CustomModelData:4014,cclashEarthquake:1} 1
execute if score @s cclashSpell matches 39 run give @s carrot_on_a_stick{display:{Name:'{"text":"Freezing Beam","color":"white","bold":true,"italic":false}'},HideFlags:4,Unbreakable:1b,CustomModelData:4015,cclashFbeam:1} 1
execute if score @s cclashSpell matches 69 run give @s carrot_on_a_stick{display:{Name:'{"text":"Strike of Lightning","color":"white","bold":true,"italic":false}'},HideFlags:4,Unbreakable:1b,CustomModelData:4016,cclashSlightning:1} 1

execute if score @s cclashSpell matches 23 if score @s cclashCasted matches 3 run give @s carrot_on_a_stick{display:{Name:'{"text":"Ice Spikes","color":"white","bold":true,"italic":false}'},HideFlags:4,Unbreakable:1b,CustomModelData:4017,cclashIspikes:1} 1
execute if score @s cclashSpell matches 49 run give @s carrot_on_a_stick{display:{Name:'{"text":"Glacier Mend","color":"white","bold":true,"italic":false}'},HideFlags:4,Unbreakable:1b,CustomModelData:4018,cclashGmend:1} 1
execute if score @s cclashSpell matches 51 run give @s carrot_on_a_stick{display:{Name:'{"text":"Meteor","color":"white","bold":true,"italic":false}'},HideFlags:4,Unbreakable:1b,CustomModelData:4019,cclashMeteor:1} 1

execute if score @s cclashSpell matches 33 run give @s carrot_on_a_stick{display:{Name:'{"text":"Split Earth","color":"white","bold":true,"italic":false}'},HideFlags:4,Unbreakable:1b,CustomModelData:4020,cclashSearth:1} 1
execute if score @s cclashSpell matches 31 run give @s carrot_on_a_stick{display:{Name:'{"text":"Prison of Ice","color":"white","bold":true,"italic":false}'},HideFlags:4,Unbreakable:1b,CustomModelData:4021,cclashPice:1} 1
execute if score @s cclashSpell matches 59 run give @s carrot_on_a_stick{display:{Name:'{"text":"Magma Floor","color":"white","bold":true,"italic":false}'},HideFlags:4,Unbreakable:1b,CustomModelData:4022,cclashMfloor:1} 1

execute if score @s cclashSpell matches 41 run give @s carrot_on_a_stick{display:{Name:'{"text":"Arctic Erruption","color":"white","bold":true,"italic":false}'},HideFlags:4,Unbreakable:1b,CustomModelData:4023,cclashAerruption:1} 1

execute if score @s cclashSpell matches 5 run scoreboard players set @s cclashCooldown 3
execute if score @s cclashSpell matches 13 run scoreboard players set @s cclashCooldown 0
execute if score @s cclashSpell matches 23 if score @s cclashCasted matches 1 run scoreboard players set @s cclashCooldown 1

execute if score @s cclashSpell matches 10 run scoreboard players set @s cclashCooldown 6
execute if score @s cclashSpell matches 26 run scoreboard players set @s cclashCooldown 9
execute if score @s cclashSpell matches 46 run scoreboard players set @s cclashCooldown 7

execute if score @s cclashSpell matches 18 run scoreboard players set @s cclashCooldown 10
execute if score @s cclashSpell matches 36 run scoreboard players set @s cclashCooldown 8
execute if score @s cclashSpell matches 28 run scoreboard players set @s cclashCooldown 8

execute if score @s cclashSpell matches 15 run scoreboard players set @s cclashCooldown 9
execute if score @s cclashSpell matches 39 run scoreboard players set @s cclashCooldown 9
execute if score @s cclashSpell matches 69 run scoreboard players set @s cclashCooldown 9

execute if score @s cclashSpell matches 23 if score @s cclashCasted matches 3 run scoreboard players set @s cclashCooldown 10
execute if score @s cclashSpell matches 49 run scoreboard players set @s cclashCooldown 15
execute if score @s cclashSpell matches 51 run scoreboard players set @s cclashCooldown 11

execute if score @s cclashSpell matches 33 run scoreboard players set @s cclashCooldown 11
execute if score @s cclashSpell matches 31 run scoreboard players set @s cclashCooldown 10
execute if score @s cclashSpell matches 59 run scoreboard players set @s cclashCooldown 11

execute if score @s cclashSpell matches 41 run scoreboard players set @s cclashCooldown 15

playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 1 1.5
playsound minecraft:block.end_portal_frame.fill master @s ~ ~ ~ 1 0

execute if score @s cclashSpell matches 1.. run scoreboard players add @s cclashFood 1
execute unless score @s cclashSpell matches 0 run scoreboard players add @s cclashCSpells 1
scoreboard players set @s cclashSpell 0
scoreboard players set @s cclashCasted 0

