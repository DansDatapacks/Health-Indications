# initialize new health bar

#get entity ID
scoreboard players operation #healthindications.entity_ID sourcecraft.temp = @s sourcecraft.ID

#spawn new health bar
execute anchored eyes run summon minecraft:text_display ~ ~ ~ {Tags:["healthindications.health_bar","healthindications.health_bar.init","global.ignore"],shadow_radius:0f,shadow_strength:0f,text_opacity:255,default_background:0b,shadow:0b,see_through:0b,alignment:"center",text:'{"text":""}',billboard:"center",background:16777215,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]}}

# ignore better sync on certain entities
execute if score #healthindications.option.health_bar.better_sync sourcecraft.data matches 1 if entity @s[type=minecraft:player] run tag @e[type=minecraft:text_display,tag=healthindications.health_bar.init,limit=1] add healthindications.health_bar.better_sync.ignore
execute if score #healthindications.option.health_bar.better_sync sourcecraft.data matches 1 if score #healthindications.option.health_bar.dont_sync_ridables sourcecraft.data matches 1 if entity @s[type=#healthindications.2:ridable] run tag @e[type=minecraft:text_display,tag=healthindications.health_bar.init,limit=1] add healthindications.health_bar.better_sync.ignore
execute if score #healthindications.option.health_bar.better_sync sourcecraft.data matches 1 if score #healthindications.option.health_bar.dont_sync_ridables sourcecraft.data matches 1 if entity @s[type=#healthindications.2:saddleable] if data entity @s {Saddle:1b} run tag @e[type=minecraft:text_display,tag=healthindications.health_bar.init,limit=1] add healthindications.health_bar.better_sync.ignore

# make healthbar ride the entity
execute if score #healthindications.option.health_bar.better_sync sourcecraft.data matches 1 store success score #healthindications.health_bar.ridable sourcecraft.temp run ride @e[type=minecraft:text_display,tag=healthindications.health_bar.init,tag=!healthindications.health_bar.better_sync.ignore,limit=1] mount @s

# ignore better sync if unable to ride
execute if score #healthindications.option.health_bar.better_sync sourcecraft.data matches 1 if score #healthindications.health_bar.ridable sourcecraft.temp matches 0 run tag @e[type=minecraft:text_display,tag=healthindications.health_bar.init,limit=1] add healthindications.health_bar.better_sync.ignore

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

# reset temp scores
scoreboard players reset #healthindications.health_bar.ridable sourcecraft.temp