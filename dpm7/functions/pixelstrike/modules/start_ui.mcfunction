gamerule sendCommandFeedback false

scoreboard players set @s psStart 0

tellraw @a [{"text":"PIXEL","color":"blue","bold":true},{"text":"STRIKE","color":"gold","bold":true},{"text":"\n\n"},{"text":"[Join Defenders]","clickEvent":{"action":"run_command","value":"/scoreboard players set @s psStart 2"}},{"text":" "},{"text":"[Join Attackers]","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set @s psStart 3"}},{"text":"\n\n"},{"text":"[Leave Game]","color":"dark_gray","bold":false,"clickEvent":{"action":"run_command","value":"/scoreboard players set @s psStart 4"}}]

#For start trigger player only
tellraw @s [{"text":"\n\n"},{"text":"[Start Game]\n","color":"yellow","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set psstartdummy psDummy 100"}},{"text":"[Select Map]\n","color":"light_purple","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @s psStart 6"}},{"text":"[Settings]\n","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @s psStart 5"}}]