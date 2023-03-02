#Reduce counter values
scoreboard players remove psBuyTime psDummy 1
scoreboard players set psBuyDummy psDummy 11

title @a[tag=psPlaying] title {"text":" "}
title @a[tag=psPlaying] subtitle [{"text":"Buy Time: ","color":"gold","bold":true},{"score":{"name":"psBuyTime","objective":"psDummy"},"color":"white"}]
title @a[tag=psPlaying] times 0 21 0