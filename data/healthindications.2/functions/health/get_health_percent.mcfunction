# calculate percent of health compared to max of executor

#get max health
execute store result score #healthindications.current_max_health sourcecraft.temp run attribute @s minecraft:generic.max_health get

#get current health
scoreboard players operation #healthindications.current_health sourcecraft.temp = @s healthindications.health

#get percentage
scoreboard players operation #healthindications.current_health sourcecraft.temp *= #100 sourcecraft.data
execute store result score @s healthindications.health.percent run scoreboard players operation #healthindications.current_health sourcecraft.temp /= #healthindications.current_max_health sourcecraft.temp

#tag init
tag @s[tag=!healthindications.init_health_percent] add healthindications.init_health_percent