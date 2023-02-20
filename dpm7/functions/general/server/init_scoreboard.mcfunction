# GLOBAL VARIABLES: Used for all minigames
scoreboard objectives add id dummy
execute unless score $playerCount id matches 0.. run scoreboard players set $playerCount id 0

scoreboard objectives add rightClick minecraft.used:minecraft.carrot_on_a_stick

scoreboard objectives add tick dummy
scoreboard objectives add counter dummy

scoreboard objectives add posX dummy
scoreboard objectives add posY dummy
scoreboard objectives add posZ dummy

scoreboard objectives add motionX dummy
scoreboard objectives add motionY dummy
scoreboard objectives add motionZ dummy

scoreboard objectives add raycast dummy

scoreboard objectives add integers dummy
scoreboard players set #2 integers 2
scoreboard players set #3 integers 3
scoreboard players set #4 integers 4
scoreboard players set #5 integers 5
scoreboard players set #6 integers 6
scoreboard players set #7 integers 7
scoreboard players set #8 integers 8
scoreboard players set #9 integers 9
scoreboard players set #10 integers 10