# reset health bar on hit

#reset despawn timer
execute store result score @e[type=minecraft:text_display,tag=healthindications.health_bar.init] healthindications.health_bar.despawn run time query gametime
scoreboard players add @s healthindications.health_bar.despawn 300
schedule function healthindications.2:health_bar/scheduled_end_health_bar 300t append

#update health bar
function healthindications.2:health_bar/update_health_bar