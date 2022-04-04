# get where the target currently is

#store the targets previous coords
scoreboard players operation #sourcecraft.predictive_sync.PosX.previous sourcecraft.temp = @s sourcecraft.posX
scoreboard players operation #sourcecraft.predictive_sync.PosY.previous sourcecraft.temp = @s sourcecraft.posY
scoreboard players operation #sourcecraft.predictive_sync.PosZ.previous sourcecraft.temp = @s sourcecraft.posZ

#get the targets current coords
execute store result score @s sourcecraft.posX run data get entity @s Pos[0] 1000
execute store result score @s sourcecraft.posY run data get entity @s Pos[1] 1000
execute store result score @s sourcecraft.posZ run data get entity @s Pos[2] 1000

#predict future position
function sourcecraft.5:predictive_sync/predict_target_pos