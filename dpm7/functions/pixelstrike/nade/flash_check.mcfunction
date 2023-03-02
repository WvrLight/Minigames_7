#execute
#  as @a                          # For each player,
#  at @s                          # start at their feet.
#  anchored eyes                  # Looking through their eyes,
#  facing <X Y Z>                 # face perfectly at the target
#  anchored feet                  # (go back to the feet)
#  positioned ^ ^ ^1              # and move one block forward.
#  rotated as @s                  # Face the direction the player
#                                   is actually facing,
#  positioned ^ ^ ^-1             # and move one block back.
#  if entity @s[distance=..X]   # Check if we're close to the
#                                   player's feet.
#  run say I'm facing the target!

#Check if player can see the flashbang dummy, if so, start a raycast from the flashbang to the target if it is not blocked
scoreboard players set @s raycast 0
execute as @s at @s anchored eyes facing entity @e[name=psFlashdummy,limit=1] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..1.1] at @e[name=psFlashdummy,limit=1,sort=nearest] anchored eyes facing entity @s eyes anchored feet run function dpm7:pixelstrike/nade/flash_cast