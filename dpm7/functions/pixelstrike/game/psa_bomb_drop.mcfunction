data merge entity @s {Age:-32768,PickupDelay:32767}
execute at @s unless entity @a[team=psCT,distance=..1] if entity @a[team=psT,distance=..0.5] run data merge entity @s {PickupDelay:1}