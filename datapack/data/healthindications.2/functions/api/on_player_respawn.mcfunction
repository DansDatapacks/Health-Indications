# runs if this core datapack is the newest version

#run if load status matches this core datapacks version
execute if score #healthindications load.status matches 2 run tag @s add healthindications.update_health_percent
execute if score #healthindications load.status matches 2 run schedule function healthindications.2:health/scheduled_update_health_percent 1t