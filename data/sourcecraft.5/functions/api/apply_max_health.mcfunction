# runs if this core datapack is the newest version

#cancel command feedback
execute if score #sourcecraft load.status matches 5 run function #sourcecraft:cancel_command_feedback

#run if load status matches this core datapacks version
execute if score #sourcecraft load.status matches 5 run function sourcecraft.5:health/apply_max_health