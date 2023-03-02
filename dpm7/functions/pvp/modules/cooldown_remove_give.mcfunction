# For list of item data and rightClick IDs, refer to item_modifiers/change_rightClick.json

scoreboard players operation @s slot = #temp slot
scoreboard players operation @s rightClickId = #temp rightClickId

# Slot detection
execute if score @s slot matches 0 run item replace entity @s hotbar.0 with carrot_on_a_stick{newItem:1} 1
execute if score @s slot matches 1 run item replace entity @s hotbar.1 with carrot_on_a_stick{newItem:1} 1
execute if score @s slot matches 2 run item replace entity @s hotbar.2 with carrot_on_a_stick{newItem:1} 1
execute if score @s slot matches 3 run item replace entity @s hotbar.3 with carrot_on_a_stick{newItem:1} 1
execute if score @s slot matches 4 run item replace entity @s hotbar.4 with carrot_on_a_stick{newItem:1} 1
execute if score @s slot matches 5 run item replace entity @s hotbar.5 with carrot_on_a_stick{newItem:1} 1
execute if score @s slot matches 6 run item replace entity @s hotbar.6 with carrot_on_a_stick{newItem:1} 1
execute if score @s slot matches 7 run item replace entity @s hotbar.7 with carrot_on_a_stick{newItem:1} 1
execute if score @s slot matches 8 run item replace entity @s hotbar.8 with carrot_on_a_stick{newItem:1} 1

# Determine rightClick data of slot
execute if score @s slot matches 0 run item modify entity @s hotbar.0 dpm7:change_rightClick
execute if score @s slot matches 1 run item modify entity @s hotbar.1 dpm7:change_rightClick
execute if score @s slot matches 2 run item modify entity @s hotbar.2 dpm7:change_rightClick
execute if score @s slot matches 3 run item modify entity @s hotbar.3 dpm7:change_rightClick
execute if score @s slot matches 4 run item modify entity @s hotbar.4 dpm7:change_rightClick
execute if score @s slot matches 5 run item modify entity @s hotbar.5 dpm7:change_rightClick
execute if score @s slot matches 6 run item modify entity @s hotbar.6 dpm7:change_rightClick
execute if score @s slot matches 7 run item modify entity @s hotbar.7 dpm7:change_rightClick
execute if score @s slot matches 8 run item modify entity @s hotbar.8 dpm7:change_rightClick

scoreboard players reset @s slot
scoreboard players reset @s rightClickId
scoreboard players reset #temp id
scoreboard players reset #temp rightClickId