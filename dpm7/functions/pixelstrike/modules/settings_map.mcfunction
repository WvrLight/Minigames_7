tellraw @s [{"text":"\nSelect Map:\n\n","color":"yellow","bold":true},{"text":"[Map 1]\n","color":"green","bold":false,"clickEvent":{"action":"run_command","value":"/trigger psStart set 101"}},{"text":"[Map 2]","color":"gold","bold":false,"clickEvent":{"action":"run_command","value":"/trigger psStart set 102"}}]

scoreboard players reset @s psStart