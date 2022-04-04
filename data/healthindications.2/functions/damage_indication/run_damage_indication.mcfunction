# runs a damage indicator when executor's health changes

#init nbt sign
execute if predicate healthindications.2:in_overworld run summon minecraft:marker ~ 319 ~ {Tags:["sourcecraft.air_detector","global.ignore"]}
execute unless predicate healthindications.2:in_overworld run summon minecraft:marker ~ 255 ~ {Tags:["sourcecraft.air_detector","global.ignore"]}
execute as @e[type=minecraft:marker,tag=sourcecraft.air_detector] run function #sourcecraft:find_air_block_below_align_to_grid
execute at @e[type=minecraft:marker,tag=sourcecraft.air_detector] run setblock ~ ~ ~ minecraft:acacia_sign

#parse health change
execute unless score #healthindications.health_difference sourcecraft.temp matches 0 run function healthindications.2:damage_indication/init_health_indication

#parse absorption change
execute if score #healthindications.health_difference sourcecraft.temp matches 0 positioned ~ ~ ~ unless score #healthindications.absorption_difference sourcecraft.temp matches 0 run function healthindications.2:damage_indication/init_absorption_indication
execute unless score #healthindications.health_difference sourcecraft.temp matches 0 positioned ~ ~0.26 ~ unless score #healthindications.absorption_difference sourcecraft.temp matches 0 run function healthindications.2:damage_indication/init_absorption_indication

#end nbt sign
execute at @e[type=minecraft:marker,tag=sourcecraft.air_detector] run setblock ~ ~ ~ air
kill @e[type=minecraft:marker,tag=sourcecraft.air_detector]