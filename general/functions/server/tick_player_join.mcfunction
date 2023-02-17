execute as @a[tag=!m7] unless score @s id > #playerCount id unless score @s run function general:server/initialize_player

schedule function general:server/tick_player_join 1s