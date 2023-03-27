# check for health bars scheduled for deletion

#get current gametime
execute store result score #healthindications.gametime sourcecraft.temp run time query gametime

#find health bar scheduled for deletion
execute as @e[type=!#sourcecraft.5:no_health,tag=!healthindications.ignore,tag=!global.ignore] if score #healthindications.gametime sourcecraft.temp = @s healthindications.health_bar.despawn run function healthindications.3:health_bar/end_health_bar

#reset despawn timer
execute as @e[type=!#sourcecraft.5:no_health,tag=!healthindications.ignore,tag=!global.ignore] if score #healthindications.gametime sourcecraft.temp = @s healthindications.health_bar.despawn run scoreboard players reset @s healthindications.health_bar.despawn