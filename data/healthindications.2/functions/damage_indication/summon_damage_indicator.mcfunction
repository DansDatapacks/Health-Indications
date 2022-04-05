# summon damage indicator

#create damage indication entity
execute if score #healthindications.option.damage_indication.stationary sourcecraft.data matches 1 anchored eyes positioned ^1 ^ ^ run summon minecraft:area_effect_cloud ~ ~-1 ~ {CustomNameVisible:1b,Duration:30,Tags:["healthindications.damage_indicator","healthindications.damage_indicator_init","global.ignore"],CustomName:'{"text":""}'}
execute unless score #healthindications.option.damage_indication.stationary sourcecraft.data matches 1 anchored eyes positioned ^1 ^ ^ run summon minecraft:armor_stand ~ ~-1 ~ {CustomNameVisible:1b,Tags:["healthindications.damage_indicator","healthindications.damage_indicator_init","global.ignore"],CustomName:'{"text":""}',Invisible:1b,Invulnerable:1b,Marker:1b,DisabledSlots:4144959}

#set name of damage indication to parsed value
execute at @e[type=minecraft:marker,tag=sourcecraft.nbt_sign] run data modify entity @e[tag=healthindications.damage_indicator_init,limit=1] CustomName set from block ~ ~ ~ Text1

#remove temp tags
tag @e[tag=healthindications.damage_indicator_init,limit=1,sort=nearest] remove healthindications.damage_indicator_init