# get where the player currently is

# store the coords from the previous tick
scoreboard players operation @s sourcecraft.posX.previous = @s sourcecraft.posX
#scoreboard players operation @s sourcecraft.posY.previous = @s sourcecraft.posY
scoreboard players operation @s sourcecraft.posZ.previous = @s sourcecraft.posZ

# store the players coords with 6 decimals
execute store result score @s sourcecraft.posX run data get entity @s Pos[0] 1000000
#execute store result score @s sourcecraft.posY run data get entity @s Pos[1] 1000000
execute store result score @s sourcecraft.posZ run data get entity @s Pos[2] 1000000
# execute store result score @s sourcecraft.rotX run data get entity @s Rotation[0] 1000000
# execute store result score @s sourcecraft.rotY run data get entity @s Rotation[1] 1000000

# Predict coords
function healthindications.2:health_bar/predictive_sync/predict_entity_pos