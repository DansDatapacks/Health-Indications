# starts raycast

#reset past raycast
kill @e[type=minecraft:marker,tag=sourcecraft.raycast.ray]

#init raycast tag
tag @s add sourcecraft.raycast.raycasting

#set defaults
scoreboard players set #sourcecraft.raycast.hit sourcecraft.temp 0
execute unless score #sourcecraft.raycast.distance sourcecraft.temp matches 0.. run scoreboard players set #sourcecraft.raycast.distance sourcecraft.temp 7

#scale distance
scoreboard players operation #sourcecraft.raycast.distance sourcecraft.temp *= #10 sourcecraft.data

#run raycast
execute as @s at @s anchored eyes positioned ^ ^ ^ anchored feet run function sourcecraft.5:raycast/simple/run

#reset tag
tag @s remove sourcecraft.raycast.raycasting

#reset scores
scoreboard players reset #sourcecraft.raycast.hit sourcecraft.temp
scoreboard players reset #sourcecraft.raycast.distance sourcecraft.temp
scoreboard players reset #sourcecraft.raycast.distance_traveled sourcecraft.temp