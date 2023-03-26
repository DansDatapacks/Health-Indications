# handles individual health bars

#get health bar ID
scoreboard players operation #healthindications.health_bar_ID sourcecraft.temp = @s healthindications.health_bar.ID

#find matching entity
execute as @e[type=!#sourcecraft.5:no_health] unless entity @s[gamemode=creative] unless entity @s[gamemode=spectator] if score @s sourcecraft.ID = #healthindications.health_bar_ID sourcecraft.temp run tag @s add healthindications.found_entity

# check if dismounted (horses like to dismount any entity riding it)
execute if score #healthindications.option.health_bar.better_sync sourcecraft.data matches 1 on vehicle run scoreboard players set #healthindications.health_bar.mounted sourcecraft.temp 1

# check if can be mounted (if u cant remount, then make it a tp text entity instead of a riding text entity)
execute if score #healthindications.option.health_bar.better_sync sourcecraft.data matches 1 if entity @s[tag=!healthindications.health_bar.better_sync.ignore] unless score #healthindications.health_bar.mounted sourcecraft.temp matches 1 store success score #healthindications.health_bar.ridable sourcecraft.temp run ride @s mount @e[type=!#sourcecraft.5:no_health,tag=healthindications.found_entity,limit=1]
execute if score #healthindications.option.health_bar.better_sync sourcecraft.data matches 1 if score #healthindications.health_bar.ridable sourcecraft.temp matches 0 run tag @s add healthindications.health_bar.better_sync.ignore

# #find entity head
execute if score #healthindications.option.health_bar.better_sync sourcecraft.data matches 1 if entity @s[tag=healthindications.health_bar.better_sync.ignore] as @e[type=!#sourcecraft.5:no_health,tag=healthindications.found_entity] at @s anchored eyes run summon minecraft:marker ^ ^ ^ {Tags:["healthindications.head_pos"]}
execute unless score #healthindications.option.health_bar.better_sync sourcecraft.data matches 1 as @e[type=!#sourcecraft.5:no_health,tag=healthindications.found_entity] at @s anchored eyes run summon minecraft:marker ^ ^ ^ {Tags:["healthindications.head_pos"]}

#tp to matching entity
execute if score #healthindications.option.health_bar.better_sync sourcecraft.data matches 1 if entity @s[tag=healthindications.health_bar.better_sync.ignore] at @e[type=minecraft:marker,tag=healthindications.head_pos] run tp ~ ~ ~
execute unless score #healthindications.option.health_bar.better_sync sourcecraft.data matches 1 at @e[type=minecraft:marker,tag=healthindications.head_pos] run tp ~ ~ ~

#delete entity head pos finder
execute if score #healthindications.option.health_bar.better_sync sourcecraft.data matches 1 if entity @s[tag=healthindications.health_bar.better_sync.ignore] run kill @e[type=minecraft:marker,tag=healthindications.head_pos]
execute unless score #healthindications.option.health_bar.better_sync sourcecraft.data matches 1 run kill @e[type=minecraft:marker,tag=healthindications.head_pos]

#if there is no entity, end this health bar
execute unless entity @e[type=!#sourcecraft.5:no_health,tag=healthindications.found_entity] run function healthindications.2:health_bar/end_self

#reset tag
tag @e[type=!#sourcecraft.5:no_health,tag=healthindications.found_entity] remove healthindications.found_entity

# reset temp scores
scoreboard players reset #healthindications.health_bar.mounted sourcecraft.temp
scoreboard players reset #healthindications.health_bar.ridable sourcecraft.temp