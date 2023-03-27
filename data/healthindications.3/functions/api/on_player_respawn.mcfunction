# runs if this core datapack is the newest version

#run if load status matches this core datapacks version
execute if score #healthindications load.status matches 3 run tag @s add healthindications.update_health_percent
execute if score #healthindications load.status matches 3 run schedule function healthindications.3:health/scheduled_update_health_percent 1t