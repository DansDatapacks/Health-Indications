# update health bar

#init nbt sign
function #sourcecraft:start_nbt_sign

#init parse
execute if score #healthindications.option.health_bar.custom_texture sourcecraft.data matches 1 at @e[type=minecraft:marker,tag=sourcecraft.nbt_sign] run function healthindications.2:health_bar/bar/custom/init_parse
execute unless score #healthindications.option.health_bar.custom_texture sourcecraft.data matches 1 at @e[type=minecraft:marker,tag=sourcecraft.nbt_sign] run function healthindications.2:health_bar/bar/simple/init_parse

#set name to parsed string
execute at @e[type=minecraft:marker,tag=sourcecraft.nbt_sign] run data modify entity @s CustomName set from block ~ ~ ~ Text1

#end nbt sign
function #sourcecraft:end_nbt_sign