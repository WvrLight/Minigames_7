#Raycast until hitting air, then teleport the flash dummy to final position

scoreboard players add @s raycast 1

execute if score @s raycast matches ..10 positioned ^ ^ ^0.5 if block ~ ~ ~ air run tp @s ~ ~ ~
execute if score @s raycast matches ..10 positioned ^ ^ ^0.5 unless block ~ ~ ~ air run function dpm7:pixelstrike/nade/flash_charge_cast2

#If wall is too thick, reset item
execute if score @s raycast matches 10.. at @s as @p run function dpm7:pixelstrike/item/refund_flash
execute if score @s raycast matches 10.. run kill @s