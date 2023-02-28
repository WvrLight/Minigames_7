summon area_effect_cloud ~ ~ ~ {Duration:999999,Tags:["swappy"]}
tag @s add swapper
tp @s @a[sort=nearest,limit=1,tag=!swapper]
execute as @a[sort=nearest,limit=1,tag=!swapper] at @s run tp @s @e[tag=swappy,limit=1]
kill @e[tag=swappy]
tag @s remove swapper
