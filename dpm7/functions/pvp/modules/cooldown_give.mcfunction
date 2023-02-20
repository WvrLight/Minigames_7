 # Function to apply cooldown for a specific slot

execute if score @s slot matches 0 run item replace entity @s hotbar.0 with black_stained_glass_pane{display:{Name:'{"text":"Cooldown","color":"dark_gray","bold":true}'}, cooldown:1} 1
execute if score @s slot matches 1 run item replace entity @s hotbar.1 with red_stained_glass_pane{display:{Name:'{"text":"Cooldown","color":"red","bold":true}'}, cooldown:1} 1
execute if score @s slot matches 2 run item replace entity @s hotbar.2 with orange_stained_glass_pane{display:{Name:'{"text":"Cooldown","color":"gold","bold":true}'},cooldown:1} 1
execute if score @s slot matches 3 run item replace entity @s hotbar.3 with yellow_stained_glass_pane{display:{Name:'{"text":"Cooldown","color":"yellow","bold":true}'},cooldown:1} 1
execute if score @s slot matches 4 run item replace entity @s hotbar.4 with lime_stained_glass_pane{display:{Name:'{"text":"Cooldown","color":"green","bold":true}'},cooldown:1} 1
execute if score @s slot matches 5 run item replace entity @s hotbar.5 with green_stained_glass_pane{display:{Name:'{"text":"Cooldown","color":"dark_green","bold":true}'},cooldown:1} 1
execute if score @s slot matches 6 run item replace entity @s hotbar.6 with cyan_stained_glass_pane{display:{Name:'{"text":"Cooldown","color":"aqua","bold":true}'},cooldown:1} 1
execute if score @s slot matches 7 run item replace entity @s hotbar.7 with light_blue_stained_glass_pane{display:{Name:'{"text":"Cooldown","color":"blue","bold":true}'},cooldown:1} 1
execute if score @s slot matches 8 run item replace entity @s hotbar.8 with blue_stained_glass_pane{display:{Name:'{"text":"Cooldown","color":"dark_blue","bold":true}'},cooldown:1} 1

scoreboard players operation @s cooldown /= #20 integers
scoreboard players remove @s cooldown 1
function dpm7:pvp/modules/cooldown_give_count