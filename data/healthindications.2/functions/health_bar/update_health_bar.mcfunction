# update health bar

#init nbt sign
execute if predicate healthindications.2:in_overworld run summon minecraft:marker ~ 319 ~ {Tags:["sourcecraft.air_detector","global.ignore"]}
execute unless predicate healthindications.2:in_overworld run summon minecraft:marker ~ 255 ~ {Tags:["sourcecraft.air_detector","global.ignore"]}
execute as @e[type=minecraft:marker,tag=sourcecraft.air_detector] run function #sourcecraft:find_air_block_below_align_to_grid
execute at @e[type=minecraft:marker,tag=sourcecraft.air_detector] run setblock ~ ~ ~ minecraft:acacia_sign

#init parse
execute if score #healthindications.option.health_bar.custom_texture sourcecraft.data matches 1 at @e[type=minecraft:marker,tag=sourcecraft.air_detector] run function healthindications.2:health_bar/bar/custom/init_parse
execute unless score #healthindications.option.health_bar.custom_texture sourcecraft.data matches 1 at @e[type=minecraft:marker,tag=sourcecraft.air_detector] run function healthindications.2:health_bar/bar/simple/init_parse

#set name to parsed string
execute at @e[type=minecraft:marker,tag=sourcecraft.air_detector] run data modify entity @s CustomName set from block ~ ~ ~ Text1

#end nbt sign
execute at @e[type=minecraft:marker,tag=sourcecraft.air_detector] run setblock ~ ~ ~ air
kill @e[type=minecraft:marker,tag=sourcecraft.air_detector]