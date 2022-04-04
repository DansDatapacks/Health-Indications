# run raycast

#if hit block
execute unless block ~ ~ ~ #sourcecraft.5:passable run scoreboard players set #sourcecraft.raycast.hit sourcecraft.temp 1

#if hit entity (non-player)
execute if entity @e[type=!minecraft:player,distance=..0.1] run scoreboard players set #sourcecraft.raycast.hit sourcecraft.temp 1

#mark that the ray has traveled one more time
scoreboard players add #sourcecraft.raycast.distance_traveled sourcecraft.temp 1

#debug
#tellraw @a {"score":{"name":"#sourcecraft.raycast.distance","objective":"sourcecraft.temp"}}
#tellraw @a {"score":{"name":"#sourcecraft.raycast.hit","objective":"sourcecraft.temp"}}
#tellraw @a {"score":{"name":"#sourcecraft.raycast.distance_traveled","objective":"sourcecraft.temp"}}

#if hit found: end
execute if score #sourcecraft.raycast.hit sourcecraft.temp matches 1 run function sourcecraft.5:raycast/simple/end

#else: continue
execute if score #sourcecraft.raycast.hit sourcecraft.temp matches 0 unless score #sourcecraft.raycast.distance_traveled sourcecraft.temp = #sourcecraft.raycast.distance sourcecraft.temp positioned ^ ^ ^0.1 run function sourcecraft.5:raycast/simple/run