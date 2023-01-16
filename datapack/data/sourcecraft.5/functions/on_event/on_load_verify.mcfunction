# verifies that this is the latest version of the core datapack and runs load if so

#run if load status matches this datapack's version
execute if score #sourcecraft load.status matches 5 run function sourcecraft.5:on_event/on_load