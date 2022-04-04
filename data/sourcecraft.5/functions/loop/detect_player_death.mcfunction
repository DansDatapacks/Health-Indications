# detect death

#detect death
execute as @a[scores={sourcecraft.died=1..}] run function #sourcecraft:modules/player_death

#reset score
scoreboard players reset @a[scores={sourcecraft.died=1..}] sourcecraft.died

#schedule to run again next tick
schedule function sourcecraft.5:loop/detect_player_death 1t replace