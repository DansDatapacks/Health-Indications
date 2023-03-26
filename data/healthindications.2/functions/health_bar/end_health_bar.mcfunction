# end health bar

#get entity ID
scoreboard players operation #healthindications.entity_ID sourcecraft.temp = @s sourcecraft.ID

#find health bar
execute as @e[type=minecraft:text_display,tag=healthindications.health_bar] if score @s healthindications.health_bar.ID = #healthindications.entity_ID sourcecraft.temp run tag @s add healthindications.found_health_bar

#kill health bar
kill @e[type=minecraft:text_display,tag=healthindications.health_bar,tag=healthindications.found_health_bar]

#reset tags
tag @e[type=minecraft:text_display,tag=healthindications.health_bar] remove healthindications.found_health_bar
tag @s remove healthindications.active_health_bar