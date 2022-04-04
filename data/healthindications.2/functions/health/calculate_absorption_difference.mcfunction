# calculates the absorption difference between their previous and new health

#get current absorption
scoreboard players operation #healthindications.current_absorption sourcecraft.temp = @s healthindications.absorption

#subtract previous absorption from current absorption
execute store result score #healthindications.absorption_difference sourcecraft.temp run scoreboard players operation #healthindications.current_absorption sourcecraft.temp -= @s healthindications.absorption.previous

#if executor is a player, remove player's current absorption from their health since health score includes players absorption amount
#execute if entity @s[type=minecraft:player] run scoreboard players operation #healthindications.health_difference sourcecraft.temp -= #healthindications.absorption_difference sourcecraft.temp