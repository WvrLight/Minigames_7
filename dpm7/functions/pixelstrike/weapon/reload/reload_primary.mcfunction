scoreboard players reset @s rightClick
scoreboard players set @s firing 0

#Set reload time based on weapon
execute if entity @s[nbt={Inventory:[{id:"minecraft:shield",tag:{rifle:1}}]}] run scoreboard players set @s psReload 32
execute if entity @s[nbt={Inventory:[{id:"minecraft:shield",tag:{rifle:1}}]}] if entity @s[nbt={Inventory:[{Slot:-106b,tag:{primary:1}}]}] run function dpm7:pixelstrike/item/give_rifle
execute if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{sniper:1}}]}] run scoreboard players set @s psReload 51
execute if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{sniper:1}}]}] if entity @s[nbt={Inventory:[{Slot:-106b,tag:{primary:1}}]}] run function dpm7:pixelstrike/item/give_sniper
execute if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{shotgun:1}}]}] run scoreboard players set @s psReload 13
execute if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{shotgun:1}}]}] if entity @s[nbt={Inventory:[{Slot:-106b,tag:{primary:1}}]}] run function dpm7:pixelstrike/item/give_shotgun
execute if entity @s[nbt={Inventory:[{id:"minecraft:shield",tag:{smg:1}}]}] run scoreboard players set @s psReload 25
execute if entity @s[nbt={Inventory:[{id:"minecraft:shield",tag:{smg:1}}]}] if entity @s[nbt={Inventory:[{Slot:-106b,tag:{primary:1}}]}] run function dpm7:pixelstrike/item/give_smg

#Clear offhand
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{primary:1}}]}] run item replace entity @s weapon.offhand with air

#Ammo check
execute if score @s psAmmo = @s psAmmoMax run scoreboard players set @s psReload 0
execute if score @s psAmmo < @s psAmmoMax at @s run playsound minecraft:block.scaffolding.break master @a ~ ~ ~ 4 1