

execute as @e[scores={rightClick=1..},nbt={SelectedItem:{tag:{horse:1}}}] at @s run function dpm7:pvp/class/harbinger/horse_start

execute as @e[tag=hHorse,scores={tick=1..}] at @s run function dpm7:pvp/class/harbinger/horse_move

