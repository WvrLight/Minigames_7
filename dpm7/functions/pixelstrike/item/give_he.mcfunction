execute if entity @s[nbt={Inventory:[{Slot:2b}]}] if entity @s[nbt={Inventory:[{Slot:3b}]}] run item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'{"text":"Frag Grenade","color":"dark_green","bold":true}',Lore:['{"text":"Explodes after a short duration or after a player is nearby the grenade. Damages anyone in the hit area.","color":"gray"}']},HideFlags:4,Unbreakable:1b,CustomModelData:853,psNade:1,psHE:1} 1

execute if entity @s[nbt={Inventory:[{Slot:2b}]}] unless entity @s[nbt={Inventory:[{Slot:3b}]}] run item replace entity @s hotbar.3 with carrot_on_a_stick{display:{Name:'{"text":"Frag Grenade","color":"dark_green","bold":true}',Lore:['{"text":"Explodes after a short duration or after a player is nearby the grenade. Damages anyone in the hit area.","color":"gray"}']},HideFlags:4,Unbreakable:1b,CustomModelData:853,psNade:1,psHE:1} 1

execute unless entity @s[nbt={Inventory:[{Slot:2b}]}] run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Frag Grenade","color":"dark_green","bold":true}',Lore:['{"text":"Explodes after a short duration or after a player is nearby the grenade. Damages anyone in the hit area.","color":"gray"}']},HideFlags:4,Unbreakable:1b,CustomModelData:853,psNade:1,psHE:1} 1