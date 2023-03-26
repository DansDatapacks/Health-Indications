# initialize new health bar

#get entity ID
scoreboard players operation #healthindications.entity_ID sourcecraft.temp = @s sourcecraft.ID

#spawn new health bar
execute anchored eyes run summon minecraft:text_display ~ ~ ~ {Tags:["healthindications.health_bar","healthindications.health_bar.init","global.ignore"],shadow_radius:0f,shadow_strength:0f,text_opacity:255,default_background:0b,shadow:0b,see_through:0b,alignment:"center",text:'{"text":""}',billboard:"center",background:16777215,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.2f,0f],scale:[1f,1f,1f]}}

# make healthbar ride the entity
# ride @e[type=minecraft:text_display,tag=healthindications.health_bar.init,limit=1] mount @s

#sync ID
scoreboard players operation @e[type=minecraft:text_display,tag=healthindications.health_bar.init,limit=1] healthindications.health_bar.ID = #healthindications.entity_ID sourcecraft.temp

#get current percent
scoreboard players operation #healthindications.current_percent sourcecraft.temp = @s healthindications.health.percent

#tag as having an active health bar
tag @s add healthindications.active_health_bar

#update health bar
execute as @e[type=minecraft:text_display,tag=healthindications.health_bar.init] at @s run function healthindications.2:health_bar/update_health_bar

#reset tags
tag @e[type=minecraft:text_display,tag=healthindications.health_bar.init] remove healthindications.health_bar.init