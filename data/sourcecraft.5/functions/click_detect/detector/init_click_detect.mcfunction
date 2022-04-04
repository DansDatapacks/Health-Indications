# init click detector entity

#get player ID
scoreboard players operation #ID sourcecraft.temp = @s sourcecraft.ID

#if there already is a click detector entity that matches ID, tag them
execute as @e[type=minecraft:wandering_trader,tag=sourcecraft.click_detect.entity] if score @s sourcecraft.ID = #ID sourcecraft.temp run tag @s add sourcecraft.click_detect.entity.found

#summon click detect entity (if there isnt one already)
execute unless entity @e[type=minecraft:wandering_trader,tag=sourcecraft.click_detect.entity,tag=sourcecraft.click_detect.entity.found,limit=1] run summon minecraft:wandering_trader ~ 319 ~ {Tags:["sourcecraft.click_detect.entity","sourcecraft.click_detect.entity.init","global.ignore"],Team:"sourcecraft.nocollison",Offers:{Recipes:[]},PortalCooldown:2147483647,NoAI:1b,NoGravity:1b,Silent:1b,CanPickUpLoot:false,ActiveEffects:[{Id:14b,Ambient:true,Amplifier:0b,Duration:2147483647,ShowParticles:false},{Id:11b,Ambient:true,Amplifier:127b,Duration:2147483647,ShowParticles:false}]}

#give click detect entity matching ID to executor
scoreboard players operation @e[type=minecraft:wandering_trader,tag=sourcecraft.click_detect.entity,tag=sourcecraft.click_detect.entity.init,limit=1] sourcecraft.ID.sync = #ID sourcecraft.temp

#give click detection active tag
tag @s add sourcecraft.click_detect.running

#remove temp tags
tag @e[type=minecraft:wandering_trader] remove sourcecraft.click_detect.entity.init
tag @e[type=minecraft:wandering_trader,tag=sourcecraft.click_detect.entity,tag=sourcecraft.click_detect.entity.found] remove sourcecraft.click_detect.entity.found