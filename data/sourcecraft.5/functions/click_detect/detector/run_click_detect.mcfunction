# run click detect

#get player's ID
scoreboard players operation #ID sourcecraft.temp = @s sourcecraft.ID

#tag click detector entity to sync with target
execute as @e[type=minecraft:wandering_trader,tag=sourcecraft.click_detect.entity] if score @s sourcecraft.ID.sync = #ID sourcecraft.temp at @s run tag @s add sourcecraft.click_detect.entity.found

#if no click detect entity found, summon one
# execute unless entity @e[type=minecraft:wandering_trader,tag=sourcecraft.click_detect.entity,tag=sourcecraft.click_detect.entity.found,limit=1] run function sourcecraft.5:click_detect/detector/init_click_detect
# execute unless entity @e[type=minecraft:wandering_trader,tag=sourcecraft.click_detect.entity,tag=sourcecraft.click_detect.entity.found,limit=1] as @e[type=minecraft:wandering_trader,tag=sourcecraft.click_detect.entity] if score @s sourcecraft.ID.sync = #ID sourcecraft.temp at @s run tag @s add sourcecraft.click_detect.entity.found

#tag player as sync target
tag @s add sourcecraft.predictive_sync.target

#sync click detect entity position to target
execute as @e[type=minecraft:wandering_trader,tag=sourcecraft.click_detect.entity,tag=sourcecraft.click_detect.entity.found,limit=1,sort=nearest] at @s run function sourcecraft.5:predictive_sync/run_sync
#execute as @e[type=minecraft:wandering_trader,tag=sourcecraft.click_detect.entity,tag=sourcecraft.click_detect.entity.found,limit=1,sort=nearest] at @p[tag=sourcecraft.predictive_sync.target] run tp ~ ~ ~

#reset temp tags
tag @e[type=minecraft:wandering_trader,tag=sourcecraft.click_detect.entity,tag=sourcecraft.click_detect.entity.found] remove sourcecraft.click_detect.entity.found