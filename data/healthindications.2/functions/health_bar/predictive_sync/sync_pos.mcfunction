# syncs position of executor to matching entity

#use predicted coords to teleport the creature to where the player supposedly is.
execute store result entity @s Pos[0] double 0.000001 run scoreboard players get @e[type=!#sourcecraft.5:no_health,tag=healthindications.found_entity,limit=1] sourcecraft.posX.future
#execute store result entity @s Pos[1] double 0.000001 run scoreboard players get @e[type=!#sourcecraft.5:no_health,tag=healthindications.found_entity,limit=1] sourcecraft.posY.future
execute store result entity @s Pos[1] double 1 run scoreboard players get @e[type=minecraft:armor_stand,tag=healthindications.head_pos,limit=1] sourcecraft.posY
execute store result entity @s Pos[2] double 0.000001 run scoreboard players get @e[type=!#sourcecraft.5:no_health,tag=healthindications.found_entity,limit=1] sourcecraft.posZ.future

#for good measure, tp the creature to itself to fix wobbly behaviour
tp @s @s