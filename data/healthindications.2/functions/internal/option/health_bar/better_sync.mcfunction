# custom texture for health bars

#cancel command feedback
function #sourcecraft:cancel_command_feedback

#determine 
execute unless score #healthindications.option.health_bar.better_sync sourcecraft.data matches 1 run scoreboard players set #option sourcecraft.temp 1
execute if score #healthindications.option.health_bar.better_sync sourcecraft.data matches 1 run scoreboard players set #option sourcecraft.temp 0

#set
scoreboard players operation #healthindications.option.health_bar.better_sync sourcecraft.data = #option sourcecraft.temp

#sound
execute if score #healthindications.option.health_bar.better_sync sourcecraft.data matches 1 run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.5
execute if score #healthindications.option.health_bar.better_sync sourcecraft.data matches 0 run playsound minecraft:block.fire.extinguish master @s ~ ~ ~ 1 1.5

#update healthbars
execute as @e[type=!#sourcecraft.5:no_health,tag=healthindications.active_health_bar] at @s run function healthindications.2:health_bar/trigger_health_bar

#run options menu
function healthindications.2:internal/options