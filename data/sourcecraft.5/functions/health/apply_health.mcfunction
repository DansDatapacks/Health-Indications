# apply change to player's current health

#store health value set by calling function for calculating on
scoreboard players operation #sourcecraft.health_difference sourcecraft.temp = #sourcecraft.apply_health sourcecraft.temp

#flip the health value (so that a positive applied health value means healing, and negative means damage)
scoreboard players operation #sourcecraft.health_difference sourcecraft.temp *= #-1 sourcecraft.data

#get player's current max health
execute store result score #sourcecraft.max_health sourcecraft.temp run attribute @s minecraft:generic.max_health get

#get player's current health
execute store result score #sourcecraft.current_health sourcecraft.temp run data get entity @s Health

#calculate health difference after applied health value (Maximum Health - Current Health)
scoreboard players operation #sourcecraft.health_difference sourcecraft.temp += #sourcecraft.max_health sourcecraft.temp
scoreboard players operation #sourcecraft.health_difference sourcecraft.temp -= #sourcecraft.current_health sourcecraft.temp

#if calculated difference in health after applied health value is more than their max health: kill
execute if score #sourcecraft.health_difference sourcecraft.temp >= #sourcecraft.max_health sourcecraft.temp run function #sourcecraft:run_custom_death

#else if calculated difference in health is negative: heal
execute if score #sourcecraft.health_difference sourcecraft.temp < #sourcecraft.max_health sourcecraft.temp if score #sourcecraft.apply_health sourcecraft.temp matches 1.. run function sourcecraft.5:health/current/give_attributes

#else if calculated difference is more than 1 (ignoring 0): damage player
execute if score #sourcecraft.health_difference sourcecraft.temp < #sourcecraft.max_health sourcecraft.temp if score #sourcecraft.apply_health sourcecraft.temp matches ..-1 run function sourcecraft.5:health/current/damage

#reset score from calculate function
scoreboard players reset #sourcecraft.health_difference sourcecraft.temp