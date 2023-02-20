execute as @a[scores={rightClick=1..},nbt={SelectedItem:{tag:{hook:1}}}] at @s run function dpm7:pvp/class/scout/hook_check

execute as @e[tag=hookTargetDummy] if score @s tick matches ..0 at @s run scoreboard players reset @s tick

execute as @a[tag=onHook] on vehicle run function dpm7:pvp/class/scout/apply_physics

#execute as @e[tag=motionDummy] at @s run particle dust 1.0 1.0 1.0 2.0 ~ ~ ~ 0 0 0 1 1