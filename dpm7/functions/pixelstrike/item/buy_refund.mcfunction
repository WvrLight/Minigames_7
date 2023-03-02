clear @s minecraft:carrot_on_a_stick{primary:1}
clear @s minecraft:shield{primary:1}

execute if entity @s[nbt={Inventory:[{id:"minecraft:shield",tag:{rifle:1}}]}] run scoreboard players add @s psMoney 2800
execute if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{sniper:1}}]}] run scoreboard players add @s psMoney 4850
execute if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{shotgun:1}}]}] run scoreboard players add @s psMoney 1900
execute if entity @s[nbt={Inventory:[{id:"minecraft:shield",tag:{smg:1}}]}] run scoreboard players add @s psMoney 1650