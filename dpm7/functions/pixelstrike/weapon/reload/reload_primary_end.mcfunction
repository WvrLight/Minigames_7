execute if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{shotgun:1}}]}] unless score @s psAmmo = @s psAmmoMax run scoreboard players add @s psAmmo 1
execute if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{shotgun:1}}]}] unless score @s psAmmo = @s psAmmoMax run scoreboard players set @s psReload 9
execute if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{shotgun:1}}]}] unless score @s psAmmo = @s psAmmoMax at @s run playsound minecraft:block.scaffolding.break master @s ~ ~ ~ 4 1

execute unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{shotgun:1}}]}] run scoreboard players operation @s psAmmo = @s psAmmoMax

scoreboard players reset @s rightClick
scoreboard players set @s firing 0