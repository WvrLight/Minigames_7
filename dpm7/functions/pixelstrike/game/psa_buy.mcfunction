#Check if anyone has bought something
execute as @a[scores={psPurchase=1..}] run function dpm7:pixelstrike/item/buy
#Enable shop purchase
scoreboard players enable @a[tag=psPlaying] psPurchase

#Decrement the buy time and show remaining buy time to players
execute if score psBuyDummy psDummy matches 1 run function dpm7:pixelstrike/game/psa_buy_time
scoreboard players remove psBuyDummy psDummy 1