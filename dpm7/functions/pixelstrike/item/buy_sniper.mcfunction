execute if entity @s[nbt={Inventory:[{tag:{primary:1}}]}] run function dpm7:pixelstrike/buy_refund

function dpm7:pixelstrike/item/give_sniper

#give @s carrot_on_a_stick{display:{Name:'{"text":"Reload Primary Weapon","color":"yellow","italic":false}'},primary:1} 1
tellraw @s [{"text":"Purchased","color":"yellow","bold":true},{"text":" [Sniper]","color":"dark_blue"}]
scoreboard players remove @s psMoney 4850

scoreboard players set @s psAmmo 5
scoreboard players set @s psAmmoMax 5

scoreboard players set @s sniperR 0