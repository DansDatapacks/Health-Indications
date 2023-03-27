# calculates the health difference between their previous and new health

#get current health
scoreboard players operation #healthindications.current_health sourcecraft.temp = @s healthindications.health

#subtract previous health from current health
execute store result score #healthindications.health_difference sourcecraft.temp run scoreboard players operation #healthindications.current_health sourcecraft.temp -= @s healthindications.health.previous