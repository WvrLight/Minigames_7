#summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["psTspawn"],CustomName:'{"text":"psDummy"}'}

scoreboard players set CTplayers psDummy 0
scoreboard players set Tplayers psDummy 0

scoreboard players set bombPlanted psDummy 0

#Summon barriers
execute as @e[tag=psBarrierDummy] if score @s psMap = psMap psDummy at @s run fill ^1 ^ ^1 ^-1 ^2 ^1 barrier keep

#Remove objects
kill @e[tag=psBomb]
kill @e[type=item,nbt={Item:{id:"minecraft:tnt",Count:1b}}]
kill @e[tag=psFlash]
kill @e[tag=psSmoke]
kill @e[tag=psMolly]
kill @e[tag=psHE]
kill @e[name=psSmokeCloud]
kill @e[name=psMollyArea]
kill @e[name=psNade]

execute as @a[team=psCT] run scoreboard players add CTplayers psDummy 1
execute as @e[tag=psCTspawn] if score @s psMap = psMap psDummy at @s run spreadplayers ~ ~ 2 5 true @a[team=psCT]
execute as @a[team=psT] run scoreboard players add Tplayers psDummy 1
execute as @e[tag=psTspawn] if score @s psMap = psMap psDummy at @s run spreadplayers ~ ~ 2 5 true @a[team=psT]
scoreboard players set roundStarted psDummy 1
scoreboard players set roundWinner psDummy 0
scoreboard players add Current_Round: psMain 1
scoreboard players set Round_Time: psMain -130
scoreboard players set psBuyTime psDummy 31
scoreboard players set psBuyDummy psDummy 11

#Start buy UI
function dpm7:pixelstrike/game/psa_buy_ui

tellraw @a [{"text":"Round ","color":"yellow","bold":true},{"score":{"name":"Current_Round:","objective":"psMain"},"color":"red","bold":true}]

execute as @a[tag=psPlaying] run function dpm7:pixelstrike/game/round/round_start_player
execute as @r[team=psT] run function dpm7:pixelstrike/item/give_bomb

#Buy Menu
execute as @a[tag=psPlaying] run function dpm7:pixelstrike/item/buy_menu

#TEMPORARY STUFF
#clear @a[tag=psPlaying]

#give @a[team=psCT] carrot_on_a_stick{display:{Name:'[{"text":"M4A1 ","color":"gold","bold":true},{"text":"(Rifle)","color":"yellow","bold":false}]',Lore:['{"text":"Military-issued combat rifle.","color":"dark_gray"}']},HideFlags:6,Unbreakable:1b,CustomModelData:801,rifle:1,primary:1,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:0,Operation:0,UUIDLeast:558746,UUIDMost:524216,Slot:"mainhand"},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:0,Operation:0,UUIDLeast:400931,UUIDMost:732240,Slot:"offhand"}]} 1

#give @a[team=psT] carrot_on_a_stick{display:{Name:'[{"text":"AK-47 ","color":"gold","bold":true},{"text":"(Rifle)","color":"yellow","bold":false}]',Lore:['{"text":"The standard choice for anarchists.","color":"dark_gray"}']},HideFlags:6,Unbreakable:1b,CustomModelData:800,rifle:1,primary:1,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:0,Operation:0,UUIDLeast:558746,UUIDMost:524216,Slot:"mainhand"},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:0,Operation:0,UUIDLeast:400931,UUIDMost:732240,Slot:"offhand"}]} 1

#give @a[tag=psPlaying] carrot_on_a_stick{display:{Name:'{"text":"Reload Primary Weapon","color":"yellow","italic":false}'},primary:1} 1
#give @a[tag=psPlaying] carrot_on_a_stick{display:{Name:'{"text":"Smoke Grenade","color":"gray","bold":true}',Lore:['{"text":"Reduces vvision in target area.","color":"dark_gray"}']},HideFlags:6,Unbreakable:1b,psNade:1,psSmoke:1,CustomModelData:850,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:0,Operation:0,UUIDLeast:558746,UUIDMost:524216,Slot:"mainhand"},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:0,Operation:0,UUIDLeast:400931,UUIDMost:732240,Slot:"offhand"}]} 1

#give @a[tag=psPlaying] carrot_on_a_stick{display:{Name:'{"text":"Flashbang Grenade","color":"blue","bold":true}',Lore:['{"text":"Reduces vvision in target area.","color":"dark_gray"}']},HideFlags:6,Unbreakable:1b,psNade:1,psFlash:1,CustomModelData:851,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:0,Operation:0,UUIDLeast:558746,UUIDMost:524216,Slot:"mainhand"},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:0,Operation:0,UUIDLeast:400931,UUIDMost:732240,Slot:"offhand"}]} 1

#give @a[tag=psPlaying] carrot_on_a_stick{display:{Name:'{"text":"Incendiary Grenade","color":"red","bold":true}',Lore:['{"text":"Reduces vvision in target area.","color":"dark_gray"}']},HideFlags:6,Unbreakable:1b,psNade:1,psMolly:1,CustomModelData:852,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:0,Operation:0,UUIDLeast:558746,UUIDMost:524216,Slot:"mainhand"},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:0,Operation:0,UUIDLeast:400931,UUIDMost:732240,Slot:"offhand"}]} 1

#give @a[tag=psPlaying] carrot_on_a_stick{display:{Name:'{"text":"Frag Grenade","color":"green","bold":true}',Lore:['{"text":"Reduces vvision in target area.","color":"dark_gray"}']},HideFlags:6,Unbreakable:1b,psNade:1,psHE:1,CustomModelData:853,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:0,Operation:0,UUIDLeast:558746,UUIDMost:524216,Slot:"mainhand"},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:0,Operation:0,UUIDLeast:400931,UUIDMost:732240,Slot:"offhand"}]} 1