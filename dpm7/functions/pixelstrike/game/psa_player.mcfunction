#SPRINTING
execute if score sprintingEnabled psDummy matches 0 run difficulty normal
execute if score sprintingEnabled psDummy matches 0 as @s[scores={psStamina=7..}] run effect give @s hunger 1 255 true
execute if score sprintingEnabled psDummy matches 0 as @s[scores={psStamina=0..4}] run effect give @s saturation 1 1 true

execute if score sprintingEnabled psDummy matches 1 run difficulty peaceful