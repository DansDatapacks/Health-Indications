# runs 20 times a second

#handle damage indicators
execute as @e[type=minecraft:armor_stand,tag=healthindications.damage_indicator] at @s run function healthindications.2:damage_indication/handle_damage_indicators

#handle health bars
execute as @e[type=minecraft:armor_stand,tag=healthindications.health_bar] at @s run function healthindications.2:health_bar/handle_health_bar

#loop
schedule function healthindications.2:loop/per_tick 1t replace