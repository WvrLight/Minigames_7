damage @s 3 minecraft:mob_attack by @a[tag=onHHorse,limit=1,sort=nearest]
playsound minecraft:entity.skeleton_horse.hurt master @a[distance=..10] ~ ~ ~ 1 0
tag @s add hitHorse