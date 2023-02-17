execute as @a[scores={rightClick=1..},nbt={SelectedItem:{tag:{hook:1}}}] at @s run function class:hook/start

execute as @a[tag=onHook] on vehicle run function class:hook/apply_physics
#execute as @a[tag=onHook] at @s unless data entity @s RootVehicle run function class:hook/end

#execute as @e[tag=motionDummy] at @s run particle dust 1.0 1.0 1.0 2.0 ~ ~ ~ 0 0 0 1 1