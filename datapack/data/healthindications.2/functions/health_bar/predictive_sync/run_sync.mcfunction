# runs syncing of health bar to entity

#predict pos of entity
execute as @e[type=!#sourcecraft.5:no_health,tag=healthindications.found_entity] at @s run function healthindications.2:health_bar/predictive_sync/get_entity_pos

#get head pos markers Y pos
execute as @e[type=minecraft:armor_stand,tag=healthindications.head_pos,limit=1] store result score @s sourcecraft.posY run data get entity @s Pos[1] 1
scoreboard players add @e[type=minecraft:armor_stand,tag=healthindications.head_pos,limit=1] sourcecraft.posY 1

#sync
function healthindications.2:health_bar/predictive_sync/sync_pos