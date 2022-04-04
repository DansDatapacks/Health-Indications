# ends click detect

#get player's ID
scoreboard players operation #ID sourcecraft.temp = @s sourcecraft.ID

#if there already is a click detector entity that matches ID, tag them
execute as @e[type=minecraft:wandering_trader,tag=sourcecraft.click_detect.entity] if score @s sourcecraft.ID.sync = #ID sourcecraft.temp run tag @s add sourcecraft.click_detect.entity.found

#remove click detect entity
execute as @e[type=minecraft:wandering_trader,tag=sourcecraft.click_detect.entity,tag=sourcecraft.click_detect.entity.found,limit=1] run function #sourcecraft:remove_entity

#remove click detection active tag
tag @s remove sourcecraft.click_detect.running