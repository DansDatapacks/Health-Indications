# make damage indicators show on players

#cancel command feedback
function #sourcecraft:cancel_command_feedback

#determine 
execute unless score #healthindications.option.damage_indication.affect_players sourcecraft.data matches 1 run scoreboard players set #option sourcecraft.temp 1
execute if score #healthindications.option.damage_indication.affect_players sourcecraft.data matches 1 run scoreboard players set #option sourcecraft.temp 0

#set
scoreboard players operation #healthindications.option.damage_indication.affect_players sourcecraft.data = #option sourcecraft.temp

#sound
execute if score #healthindications.option.damage_indication.affect_players sourcecraft.data matches 1 run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.5
execute if score #healthindications.option.damage_indication.affect_players sourcecraft.data matches 0 run playsound minecraft:block.fire.extinguish master @s ~ ~ ~ 1 1.5

#run options menu
function healthindications.3:internal/options