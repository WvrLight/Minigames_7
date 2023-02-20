# Leap anti-dismount
execute as @a[tag=onLeap] at @s unless data entity @s RootVehicle run ride @s mount @e[tag=leapDummy,limit=1,sort=nearest]

# Slam anti-dismount
execute as @a[tag=onSlam] at @s unless data entity @s RootVehicle run ride @s mount @e[tag=slamDummy,limit=1,sort=nearest]