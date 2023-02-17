# GLOBAL VARIABLES: Used for all minigames
scoreboard objectives add id dummy
execute unless #playerCount id matches 0.. run scoreboard players set #playerCount id 0

scoreboard objectives add tick dummy

scoreboard objectives add posX dummy
scoreboard objectives add posY dummy
scoreboard objectives add posZ dummy

scoreboard objectives add motionX dummy
scoreboard objectives add motionY dummy
scoreboard objectives add motionZ dummy

scoreboard objectives add raycast dummy