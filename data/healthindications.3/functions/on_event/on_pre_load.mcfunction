# set latest version of this datapack

#set pack load status
execute unless score #healthindications load.status matches 3.. run scoreboard players set #healthindications load.status 3

#enable modules of sourcecraft
scoreboard players set #sourcecraft.module.player_ID sourcecraft.data 1
scoreboard players set #sourcecraft.module.player_respawn_detect sourcecraft.data 1