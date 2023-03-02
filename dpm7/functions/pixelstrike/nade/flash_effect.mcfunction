scoreboard players set @s psFlashed 41
#scoreboard players operation flash psDummy = @e[tag=psFlashdummy] raycast
#scoreboard players operation flash psDummy /= div psDummy
#scoreboard players operation @s psFlashed -= flash psDummy
effect give @s blindness 4 1 true
tag @s add psFlashed