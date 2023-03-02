execute if entity @s[nbt={Inventory:[{Slot:2b}]}] if entity @s[nbt={Inventory:[{Slot:3b}]}] run item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'{"text":"Flash Charge","color":"blue","bold":true}',Lore:['{"text":"Goes through a wall. Blinds enemies in line of sight.","color":"gray"}']},HideFlags:4,Unbreakable:1b,CustomModelData:851,psFlashCharge:1} 1

execute if entity @s[nbt={Inventory:[{Slot:2b}]}] unless entity @s[nbt={Inventory:[{Slot:3b}]}] run item replace entity @s hotbar.3 with carrot_on_a_stick{display:{Name:'{"text":"Flash Charge","color":"blue","bold":true}',Lore:['{"text":"Goes through a wall. Blinds enemies in line of sight.","color":"gray"}']},HideFlags:4,Unbreakable:1b,CustomModelData:851,psFlashCharge:1} 1

execute unless entity @s[nbt={Inventory:[{Slot:2b}]}] run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Flash Charge","color":"blue","bold":true}',Lore:['{"text":"Goes through a wall. Blinds enemies in line of sight.","color":"gray"}']},HideFlags:4,Unbreakable:1b,CustomModelData:851,psFlashCharge:1} 1

