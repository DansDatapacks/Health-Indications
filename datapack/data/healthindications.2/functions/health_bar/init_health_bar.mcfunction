# initialize new health bar

#get entity ID
scoreboard players operation #healthindications.entity_ID sourcecraft.temp = @s sourcecraft.ID

#spawn new health bar
execute anchored eyes run summon minecraft:armor_stand ^ ^ ^ {CustomNameVisible:1b,Tags:["healthindications.health_bar","healthindications.health_bar_init","global.ignore"],CustomName:'{"text":""}',Invisible:1b,Invulnerable:1b,Marker:1b,DisabledSlots:4144959}

#sync ID
scoreboard players operation @e[type=minecraft:armor_stand,tag=healthindications.health_bar_init] healthindications.health_bar.ID = #healthindications.entity_ID sourcecraft.temp

#get current percent
scoreboard players operation #healthindications.current_percent sourcecraft.temp = @s healthindications.health.percent

#schedule despawn
#execute unless score @s healthindications.health_bar.despawn matches 0.. run function healthindications.2:health_bar/reset_health_bar_despawn

#tag as having an active health bar
tag @s add healthindications.active_health_bar

#update health bar
execute as @e[type=minecraft:armor_stand,tag=healthindications.health_bar_init] at @s run function healthindications.2:health_bar/update_health_bar

#reset tags
tag @e[type=minecraft:armor_stand,tag=healthindications.health_bar_init] remove healthindications.health_bar_init