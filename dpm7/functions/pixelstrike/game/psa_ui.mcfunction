tag @s add uiNormal
tag @s[nbt={SelectedItem:{tag:{primary:1}}}] add uiPrimary
tag @s[nbt={SelectedItem:{tag:{primary:1}}}] remove uiNormal
tag @s[nbt={SelectedItem:{tag:{secondary:1}}}] add uiSecondary
tag @s[nbt={SelectedItem:{tag:{secondary:1}}}] remove uiNormal

execute as @s[tag=uiNormal] run title @s actionbar [{"text":"Health: ","color":"red","bold":true},{"score":{"name":"@s","objective":"psHealth"},"color":"white","bold":false},{"text":" Money: ","color":"light_purple","bold":true},{"score":{"name":"@s","objective":"psMoney"},"color":"white","bold":false}]

execute as @s[tag=uiPrimary] run title @s actionbar [{"text":"Health: ","color":"red","bold":true},{"score":{"name":"@s","objective":"psHealth"},"color":"white","bold":false},{"text":" Ammo: ","color":"gold","bold":true},{"score":{"name":"@s","objective":"psAmmo"},"color":"white","bold":false},{"text":" / ","color":"white","bold":false},{"score":{"name":"@s","objective":"psAmmoMax"},"color":"white","bold":false},{"text":" Money: ","color":"light_purple","bold":true},{"score":{"name":"@s","objective":"psMoney"},"color":"white","bold":false}]

execute as @s[tag=uiSecondary] run title @s actionbar [{"text":"Health: ","color":"red","bold":true},{"score":{"name":"@s","objective":"psHealth"},"color":"white","bold":false},{"text":" Ammo: ","color":"gold","bold":true},{"score":{"name":"@s","objective":"psAmmo2"},"color":"white","bold":false},{"text":" / ","color":"white","bold":false},{"score":{"name":"@s","objective":"psAmmoMax2"},"color":"white","bold":false},{"text":" Money: ","color":"light_purple","bold":true},{"score":{"name":"@s","objective":"psMoney"},"color":"white","bold":false}]

tag @s remove uiNormal
tag @s remove uiPrimary
tag @s remove uiSecondary