# runs on entities that need to get their health percent updated

#update health percent
execute as @e[type=!#sourcecraft.3:no_health,tag=healthindications.update_health_percent,tag=!healthindications.ignore] run function healthindications.2:health/get_health_percent

#remove tag
tag @e[type=!#sourcecraft.3:no_health,tag=healthindications.update_health_percent,tag=!healthindications.ignore] remove healthindications.update_health_percent