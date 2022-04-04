# runs if this core datapack is the newest version

#cancel command feedback
execute if score #healthindications load.status matches 2 run function #sourcecraft:cancel_command_feedback

#run if load status matches this core datapacks version
execute if score #healthindications load.status matches 2 run function healthindications.2:internal/uninstall