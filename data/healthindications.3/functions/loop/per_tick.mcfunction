# runs 20 times a second

#handle damage indicators
execute as @e[type=minecraft:text_display,tag=healthindications.damage_indicator] at @s run function healthindications.3:damage_indication/handle_damage_indicators

#handle health bars
execute as @e[type=minecraft:text_display,tag=healthindications.health_bar] at @s run function healthindications.3:health_bar/handle_health_bar

#loop
schedule function healthindications.3:loop/per_tick 1t replace