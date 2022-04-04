# init sourcecraft variables/scores

#core variables
scoreboard objectives add sourcecraft.temp dummy
scoreboard objectives add sourcecraft.data dummy
scoreboard objectives add sourcecraft.ID dummy
scoreboard objectives add sourcecraft.ID.sync dummy

#player variables
scoreboard objectives add sourcecraft.slot dummy
scoreboard objectives add sourcecraft.died deathCount
scoreboard objectives add sourcecraft.respawn deathCount

#coordinate variables
scoreboard objectives add sourcecraft.x dummy
scoreboard objectives add sourcecraft.y dummy
scoreboard objectives add sourcecraft.z dummy
scoreboard objectives add sourcecraft.dx dummy
scoreboard objectives add sourcecraft.dy dummy
scoreboard objectives add sourcecraft.dz dummy

#positional/rotational variables
scoreboard objectives add sourcecraft.posX dummy
scoreboard objectives add sourcecraft.posY dummy
scoreboard objectives add sourcecraft.posZ dummy
# scoreboard objectives add sourcecraft.rotX dummy
# scoreboard objectives add sourcecraft.rotY dummy

#random variables
scoreboard objectives add sourcecraft.num dummy
scoreboard objectives add sourcecraft.min dummy
scoreboard objectives add sourcecraft.max dummy

#constants
scoreboard players set #100 sourcecraft.data 100
scoreboard players set #3 sourcecraft.data 3
scoreboard players set #-1 sourcecraft.data -1

#team
team add sourcecraft.nocollison
team modify sourcecraft.nocollison collisionRule never

#module loops
execute if score #sourcecraft.module.player_ID sourcecraft.data matches 1 run schedule function sourcecraft.5:loop/give_player_id 1t replace
scoreboard players reset #sourcecraft.module.player_ID sourcecraft.data
execute if score #sourcecraft.module.check_hand sourcecraft.data matches 1 run schedule function sourcecraft.5:loop/detect_hotbar_scroll 1t replace
scoreboard players reset #sourcecraft.module.check_hand sourcecraft.data
execute if score #sourcecraft.module.click_detect sourcecraft.data matches 1 run schedule function sourcecraft.5:loop/detect_click 1t replace
scoreboard players reset #sourcecraft.module.click_detect sourcecraft.data
execute if score #sourcecraft.module.player_death_detect sourcecraft.data matches 1 run schedule function sourcecraft.5:loop/detect_player_death 1t replace
scoreboard players reset #sourcecraft.module.player_death_detect sourcecraft.data
execute if score #sourcecraft.module.player_respawn_detect sourcecraft.data matches 1 run schedule function sourcecraft.5:loop/detect_player_respawn 1t replace
scoreboard players reset #sourcecraft.module.player_respawn_detect sourcecraft.data