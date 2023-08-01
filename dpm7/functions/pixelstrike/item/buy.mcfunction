#This is where all shop values should be based on

#PRIMARY
execute if entity @s[scores={psPurchase=1,psMoney=2800..}] run function dpm7:pixelstrike/item/buy_rifle
execute if entity @s[scores={psPurchase=2,psMoney=4850..}] run function dpm7:pixelstrike/item/buy_sniper
execute if entity @s[scores={psPurchase=3,psMoney=1800..}] run function dpm7:pixelstrike/item/buy_shotgun
execute if entity @s[scores={psPurchase=4,psMoney=1450..}] run function dpm7:pixelstrike/item/buy_smg

#ARMOR
execute if entity @s[scores={psPurchase=10,psMoney=500..,psHealth=..124}] run function dpm7:pixelstrike/item/buy_armor_light
execute if entity @s[scores={psPurchase=11,psMoney=1100..,psHealth=..149}] run function dpm7:pixelstrike/item/buy_armor_heavy

#GRENADES
execute if entity @s[scores={psPurchase=20,psMoney=300..,psNadeMax=..2}] run function dpm7:pixelstrike/item/buy_g_smoke
execute if entity @s[scores={psPurchase=21,psMoney=200..,psNadeMax=..2}] run function dpm7:pixelstrike/item/buy_g_flash
execute if entity @s[scores={psPurchase=22,psMoney=200..,psNadeMax=..2}] run function dpm7:pixelstrike/item/buy_g_he
execute if entity @s[scores={psPurchase=23,psMoney=400..,psNadeMax=..2}] run function dpm7:pixelstrike/item/buy_g_molly

scoreboard players set @s psPurchase 0