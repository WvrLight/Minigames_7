 # Recursive function to apply correct cooldown numbers after rightClick usage
scoreboard players remove @s cooldown 1

execute if score @s slot matches 0 run item modify entity @s hotbar.0 dpm7:increment_item
execute if score @s slot matches 1 run item modify entity @s hotbar.1 dpm7:increment_item
execute if score @s slot matches 2 run item modify entity @s hotbar.2 dpm7:increment_item
execute if score @s slot matches 3 run item modify entity @s hotbar.3 dpm7:increment_item
execute if score @s slot matches 4 run item modify entity @s hotbar.4 dpm7:increment_item
execute if score @s slot matches 5 run item modify entity @s hotbar.5 dpm7:increment_item
execute if score @s slot matches 6 run item modify entity @s hotbar.6 dpm7:increment_item
execute if score @s slot matches 7 run item modify entity @s hotbar.7 dpm7:increment_item
execute if score @s slot matches 8 run item modify entity @s hotbar.8 dpm7:increment_item

execute if score @s cooldown matches 1.. run function dpm7:pvp/modules/cooldown_give_count