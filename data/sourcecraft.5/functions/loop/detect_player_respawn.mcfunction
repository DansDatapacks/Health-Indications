# detect respawn

#detect respawn
execute as @e[type=minecraft:player] if score @s sourcecraft.respawn matches 1.. run function sourcecraft.5:respawn/on_respawn

#schedule to run again next tick
schedule function sourcecraft.5:loop/detect_player_respawn 1t replace