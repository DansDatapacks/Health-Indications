# predict where the target is moving to

# Use the difference in coords from the previous tick and the current tick to accurately predict where the player will be the next tick
# C = Current Coord, Cpt = Coord Previous Tick, Cnt = Coord Next tick (prediction)
# Formula: Cnt = (C-Cpt)*3+C

#x coord
scoreboard players operation #sourcecraft.predictive_sync.ΔX sourcecraft.temp = @s sourcecraft.posX
scoreboard players operation #sourcecraft.predictive_sync.ΔX sourcecraft.temp -= #sourcecraft.predictive_sync.PosX.previous sourcecraft.temp
scoreboard players operation #sourcecraft.predictive_sync.ΔX sourcecraft.temp *= #3 sourcecraft.data
scoreboard players operation #sourcecraft.predictive_sync.ΔX sourcecraft.temp += @s sourcecraft.posX

#y coord
scoreboard players operation #sourcecraft.predictive_sync.ΔY sourcecraft.temp = @s sourcecraft.posY
scoreboard players operation #sourcecraft.predictive_sync.ΔY sourcecraft.temp -= #sourcecraft.predictive_sync.PosY.previous sourcecraft.temp
scoreboard players operation #sourcecraft.predictive_sync.ΔY sourcecraft.temp *= #3 sourcecraft.data
scoreboard players operation #sourcecraft.predictive_sync.ΔY sourcecraft.temp += @s sourcecraft.posY

#z coord
scoreboard players operation #sourcecraft.predictive_sync.ΔZ sourcecraft.temp = @s sourcecraft.posZ
scoreboard players operation #sourcecraft.predictive_sync.ΔZ sourcecraft.temp -= #sourcecraft.predictive_sync.PosZ.previous sourcecraft.temp
scoreboard players operation #sourcecraft.predictive_sync.ΔZ sourcecraft.temp *= #3 sourcecraft.data
scoreboard players operation #sourcecraft.predictive_sync.ΔZ sourcecraft.temp += @s sourcecraft.posZ