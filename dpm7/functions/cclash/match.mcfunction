give @a[tag=cclashPlaying] carrot_on_a_stick{display:{Name:'{"text":"❂ Singvus ❂","color":"dark_green","italic":false}',Lore:['{"text":"Singvus represents all matter, the earth, and tepidity.","color":"aqua","italic":false}']},HideFlags:4,Unbreakable:1b,CustomModelData:4000,cclashSingvus:1,Enchantments:[{}]} 1

give @a[tag=cclashPlaying] carrot_on_a_stick{display:{Name:'{"text":"❂ Douzol ❂","color":"dark_aqua","italic":false}',Lore:['{"text":"Douzol represents all energy, winds, and the freezing cold.","color":"aqua","italic":false}']},HideFlags:4,Unbreakable:1b,CustomModelData:4001,cclashDouzol:1,Enchantments:[{}]} 1

give @a[tag=cclashPlaying] carrot_on_a_stick{display:{Name:'{"text":"❂ Trixios ❂","color":"dark_red","italic":false}',Lore:['{"text":"Trixios represents all of the force,the flames, and the fiery heat.","color":"aqua","italic":false}']},HideFlags:4,Unbreakable:1b,CustomModelData:4002,cclashTrixios:1,Enchantments:[{}]} 1

give @a[tag=cclashPlaying] carrot_on_a_stick{display:{Name:'[{"text":"❂","color":"dark_green","italic":false},{"text":"❂","color":"dark_aqua","italic":false},{"text":"❂","color":"dark_red","italic":false},{"text":" Conjure ","color":"aqua","italic":false},{"text":"❂","color":"dark_red","italic":false},{"text":"❂","color":"dark_aqua","italic":false},{"text":"❂","color":"dark_green","italic":false}]'},HideFlags:4,Unbreakable:1b,CustomModelData:4003,cclashConjure:1,Enchantments:[{}]} 1

give @a[tag=cclashPlaying] carrot_on_a_stick{display:{Name:'{"text":"Clear Queue","color":"aqua","italic":false}'},HideFlags:4,Unbreakable:1b,CustomModelData:4004,cclashClear:1,Enchantments:[{}]} 1

scoreboard players set @a[tag=cclashPlaying] cclashFood 0
scoreboard players set @a[tag=cclashPlaying] cclashCasted 0
scoreboard players set @a[tag=cclashPlaying] cclashCSpells 0
scoreboard players set @a[tag=cclashPlaying] cclashCooldown 0
scoreboard players set @a[tag=cclashPlaying] cclashSpell 0
scoreboard players set @a[tag=cclashPlaying] cclashMain 5
scoreboard players set time cclashDummy 0
execute as @a[tag=cclashPlaying] at @s run scoreboard players add Players_Remaining: cclashMain 1
