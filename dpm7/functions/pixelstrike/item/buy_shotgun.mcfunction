execute if entity @s[nbt={Inventory:[{tag:{primary:1}}]}] run function dpm7:pixelstrike/item/buy_refund

function dpm7:pixelstrike/item/give_shotgun

#give @s carrot_on_a_stick{display:{Name:'{"text":"Reload Primary Weapon","color":"yellow","italic":false}'},primary:1} 1
tellraw @s [{"text":"Purchased","color":"yellow","bold":true},{"text":" [Shotgun]","color":"dark_purple"}]
scoreboard players remove @s psMoney 1900

scoreboard players set @s psAmmo 6
scoreboard players set @s psAmmoMax 6

scoreboard players set @s shotgun 0
scoreboard players set @s shotgunR 0