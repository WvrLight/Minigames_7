#Raycast until hitting a block, then start the second raycast

scoreboard players add @s raycast 1

#particle dust 0.6 0.9 0.9 1.0 ~ ~-0.25 ~ 0 0 0 1 1 
execute if score @s raycast matches ..48 positioned ^ ^ ^0.5 unless block ~ ~ ~ air run scoreboard players set @s raycast 0
execute if score @s raycast matches ..48 positioned ^ ^ ^0.5 unless block ~ ~ ~ air run particle dust 0.6 0.9 0.9 1.5 ^ ^ ^-1 0.2 0.2 0.2 1 10 
execute if score @s raycast matches ..48 positioned ^ ^ ^0.5 unless block ~ ~ ~ air positioned ~ ~ ~ run function dpm7:pixelstrike/nade/flash_charge_cast2
execute if score @s raycast matches ..48 positioned ^ ^ ^0.5 unless block ~ ~ ~ air at @s run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 4 2
execute if score @s raycast matches ..48 positioned ^ ^ ^0.5 unless block ~ ~ ~ air run scoreboard players set @s raycast -1
execute if score @s raycast matches ..48 positioned ^ ^ ^0.5 if block ~ ~ ~ air run function dpm7:pixelstrike/nade/flash_charge_cast

#If there was no block spotted, reset item
execute if score @s raycast matches 48.. at @s as @p run function dpm7:pixelstrike/item/refund_flash
execute if score @s raycast matches 48.. run kill @s