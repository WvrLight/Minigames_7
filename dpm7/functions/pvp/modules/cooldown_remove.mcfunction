# Per-second cooldown removal

# Store temp id
scoreboard players operation #temp id = @s id
scoreboard players operation #temp slot = @s slot
scoreboard players operation #temp skillId = @s skillId

# Slot detection
execute if score @s slot matches 0 as @a if score @s id = #temp id run clear @s black_stained_glass_pane{cooldown:1} 1
execute if score @s slot matches 1 as @a if score @s id = #temp id run clear @s red_stained_glass_pane{cooldown:1} 1
execute if score @s slot matches 2 as @a if score @s id = #temp id run clear @s orange_stained_glass_pane{cooldown:1} 1
execute if score @s slot matches 3 as @a if score @s id = #temp id run clear @s yellow_stained_glass_pane{cooldown:1} 1
execute if score @s slot matches 4 as @a if score @s id = #temp id run clear @s lime_stained_glass_pane{cooldown:1} 1
execute if score @s slot matches 5 as @a if score @s id = #temp id run clear @s green_stained_glass_pane{cooldown:1} 1
execute if score @s slot matches 6 as @a if score @s id = #temp id run clear @s cyan_stained_glass_pane{cooldown:1} 1
execute if score @s slot matches 7 as @a if score @s id = #temp id run clear @s light_blue_stained_glass_pane{cooldown:1} 1
execute if score @s slot matches 8 as @a if score @s id = #temp id run clear @s blue_stained_glass_pane{cooldown:1} 1

# Checking if cooldown is complete
scoreboard players remove @s cooldown 1
execute if score @s cooldown matches ..0 as @a if score @s id = #temp id run function dpm7:pvp/modules/cooldown_remove_give
execute if score @s cooldown matches ..0 run kill @s

scoreboard players reset #temp id
scoreboard players reset #temp skillId