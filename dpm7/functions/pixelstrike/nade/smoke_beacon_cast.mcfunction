#Raycast until hitting a block while teleporting the beacon along

scoreboard players add @s raycast 1

execute if score @s raycast matches ..48 run tp @s ^ ^ ^1
execute if score @s raycast matches ..48 unless block ~ ~ ~ air at @s run tp @s ~ ~1 ~ 0 0
execute if score @s raycast matches ..48 if block ~ ~ ~ air at @s run function dpm7:pixelstrike/nade/smoke_beacon_cast

execute if score @s raycast matches 48.. at @s as @p run function dpm7:pixelstrike/item/refund_smoke
execute if score @s raycast matches 48.. run kill @s