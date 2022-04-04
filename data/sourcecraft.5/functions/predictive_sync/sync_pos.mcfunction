# syncs position of executor to matching entity

#use predicted coords to teleport the creature to where the player supposedly is.
execute store result entity @s Pos[0] double 0.001 run scoreboard players get #sourcecraft.predictive_sync.ΔX sourcecraft.temp
execute store result entity @s Pos[1] double 0.001 run scoreboard players get #sourcecraft.predictive_sync.ΔY sourcecraft.temp
execute store result entity @s Pos[2] double 0.001 run scoreboard players get #sourcecraft.predictive_sync.ΔZ sourcecraft.temp

#update position
tp @s @s