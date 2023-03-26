# trigger health bar

#give ID if entity doesnt have one
execute unless score @s sourcecraft.ID matches 1.. run function #sourcecraft:give_id

#get entity ID
scoreboard players operation #healthindications.entity_ID sourcecraft.temp = @s sourcecraft.ID

#find health bar
execute as @e[type=minecraft:armor_stand,tag=healthindications.health_bar] if score @s healthindications.health_bar.ID = #healthindications.entity_ID sourcecraft.temp run tag @s add healthindications.found_health_bar

#get current percent
scoreboard players operation #healthindications.current_percent sourcecraft.temp = @s healthindications.health.percent

#get current absorption
scoreboard players operation #healthindications.current_absorption sourcecraft.temp = @s healthindications.absorption

##module
#allow other packs to add their own text to the healthbar
function #healthindications:modules/add_health_bar_info

#init/reset health bar despawn timer
function healthindications.2:health_bar/reset_health_bar_despawn

#update found health bar
execute as @e[type=minecraft:armor_stand,tag=healthindications.health_bar,tag=healthindications.found_health_bar] at @s run function healthindications.2:health_bar/update_health_bar

#init health bar if there is none
execute unless entity @e[type=minecraft:armor_stand,tag=healthindications.health_bar,tag=healthindications.found_health_bar] at @s anchored eyes run function healthindications.2:health_bar/init_health_bar

#reset tags
tag @e[type=minecraft:armor_stand,tag=healthindications.health_bar] remove healthindications.found_health_bar

#reset storage
data remove storage healthindications health_bar.extra_info