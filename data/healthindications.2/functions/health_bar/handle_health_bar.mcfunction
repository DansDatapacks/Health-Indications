# handles individual health bars

#get health bar ID
scoreboard players operation #healthindications.health_bar_ID sourcecraft.temp = @s healthindications.health_bar.ID

#find matching entity
execute as @e[type=!#sourcecraft.5:no_health] unless entity @s[gamemode=creative] unless entity @s[gamemode=spectator] if score @s sourcecraft.ID = #healthindications.health_bar_ID sourcecraft.temp run tag @s add healthindications.found_entity

#find entity head
execute as @e[type=!#sourcecraft.5:no_health,tag=healthindications.found_entity] at @s anchored eyes run summon minecraft:armor_stand ^ ^ ^ {Marker:1b,Invisible:1b,Tags:["healthindications.head_pos"]}

#tp to matching entity
execute unless score #healthindications.option.health_bar.predictive_syncing sourcecraft.data matches 1 at @e[type=minecraft:armor_stand,tag=healthindications.head_pos] run tp ~ ~0.25 ~

#predictive sync
execute if score #healthindications.option.health_bar.predictive_syncing sourcecraft.data matches 1 at @s run function healthindications.2:health_bar/predictive_sync/run_sync

#delete entity head pos finder
kill @e[type=minecraft:armor_stand,tag=healthindications.head_pos]

#if there is no entity, end this health bar
execute unless entity @e[type=!#sourcecraft.5:no_health,tag=healthindications.found_entity] run function healthindications.2:health_bar/end_self

#reset tag
tag @e[type=!#sourcecraft.5:no_health,tag=healthindications.found_entity] remove healthindications.found_entity