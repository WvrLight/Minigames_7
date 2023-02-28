playsound minecraft:block.ender_chest.open master @a[distance=..15] ~ ~ ~ 1 0

clear @s minecraft:carrot_on_a_stick{cclashAearth:1} 1

scoreboard players set @s cclashAearthtime 111

item replace entity @s armor.chest with netherite_chestplate{display:{Name:'{"text":"Armor of Earth","color":"gold","bold":true,"italic":false}'},HideFlags:6,Unbreakable:1b,cclashAarmor:1,Enchantments:[{id:"minecraft:blast_protection",lvl:5s},{id:"minecraft:thorns",lvl:3s},{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-1582965255,-352171173,-2133887119,1358474152]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;-1816276244,-1922218897,-1652534962,-1043728469]}]} 1

team add cclashAearth
team modify cclashAearth color gold
team join cclashAearth @s

scoreboard players remove @s cclashCSpells 1