# predict where the player is moving to

# Use the difference in coords from the previous tick and the current tick to accurately predict where the player will be the next tick
# C = Current Coord, Cpt = Coord Previous Tick, Cnt = Coord Next tick (prediction)
# Formula: Cnt = (C-Cpt)*3+C
scoreboard players operation @s sourcecraft.posX.future = @s sourcecraft.posX
scoreboard players operation @s sourcecraft.posX.future -= @s sourcecraft.posX.previous
scoreboard players operation @s sourcecraft.posX.future *= #3 sourcecraft.data
scoreboard players operation @s sourcecraft.posX.future += @s sourcecraft.posX

# scoreboard players operation @s sourcecraft.posY.future = @s sourcecraft.posY
# scoreboard players operation @s sourcecraft.posY.future -= @s sourcecraft.posY.previous
# scoreboard players operation @s sourcecraft.posY.future *= #3 sourcecraft.data
# scoreboard players operation @s sourcecraft.posY.future += @s sourcecraft.posY

scoreboard players operation @s sourcecraft.posZ.future = @s sourcecraft.posZ
scoreboard players operation @s sourcecraft.posZ.future -= @s sourcecraft.posZ.previous
scoreboard players operation @s sourcecraft.posZ.future *= #3 sourcecraft.data
scoreboard players operation @s sourcecraft.posZ.future += @s sourcecraft.posZ