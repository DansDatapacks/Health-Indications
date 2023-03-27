# make health bars show above players

#cancel command feedback
function #sourcecraft:cancel_command_feedback

#determine
execute unless score #healthindications.option.health_bar.affect_players sourcecraft.data matches 1 run scoreboard players set #option sourcecraft.temp 1
execute if score #healthindications.option.health_bar.affect_players sourcecraft.data matches 1 run scoreboard players set #option sourcecraft.temp 0

#set
scoreboard players operation #healthindications.option.health_bar.affect_players sourcecraft.data = #option sourcecraft.temp

#sound
execute if score #healthindications.option.health_bar.affect_players sourcecraft.data matches 1 run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.5
execute if score #healthindications.option.health_bar.affect_players sourcecraft.data matches 0 run playsound minecraft:block.fire.extinguish master @s ~ ~ ~ 1 1.5

#kill all healthbars
execute if score #healthindications.option.health_bar.affect_players sourcecraft.data matches 0 as @e[type=!#sourcecraft.5:no_health,tag=healthindications.active_health_bar] run scoreboard players reset @s healthindications.health_bar.despawn
execute if score #healthindications.option.health_bar.affect_players sourcecraft.data matches 0 as @e[type=!#sourcecraft.5:no_health,tag=healthindications.active_health_bar] at @s run function healthindications.3:health_bar/end_health_bar

#run options menu
function healthindications.3:internal/options