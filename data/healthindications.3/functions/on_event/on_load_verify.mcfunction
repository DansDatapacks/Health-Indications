# verifies that this is the latest version of the core datapack and runs load if so

#run if load status matches this datapack's version
execute if score #healthindications load.status matches 3 run function healthindications.3:on_event/on_load