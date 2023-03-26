# runs once every second

#init health percent of all health-bearing entities
execute as @e[type=!#sourcecraft.3:no_health,tag=healthindications.within_range,tag=!healthindications.init_health_percent,tag=!healthindications.ignore] run function healthindications.2:health/get_health_percent
execute as @a[tag=!healthindications.init_health_percent,tag=!healthindications.ignore] run function healthindications.2:health/get_health_percent

#loop
schedule function healthindications.2:loop/per_20_ticks 20t replace