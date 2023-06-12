# init health bar parsing

#set interval
scoreboard players set #healthindications.interval sourcecraft.temp 10
scoreboard players operation #healthindications.half_of_interval sourcecraft.temp = #healthindications.interval sourcecraft.temp
scoreboard players operation #healthindications.half_of_interval sourcecraft.temp /= #2 sourcecraft.data

#set loop
scoreboard players set #healthindications.loop sourcecraft.temp 10

#init color
execute if score #healthindications.current_absorption sourcecraft.temp matches 1.. run data modify storage healthindications:health_bar temp append value '{"text":"","color":"yellow"}'
execute unless score #healthindications.current_absorption sourcecraft.temp matches 1.. if score #healthindications.current_percent sourcecraft.temp matches 76.. run data modify storage healthindications:health_bar temp append value '{"text":"","color":"green"}'
execute unless score #healthindications.current_absorption sourcecraft.temp matches 1.. if score #healthindications.current_percent sourcecraft.temp matches 26..75 run data modify storage healthindications:health_bar temp append value '{"text":"","color":"yellow"}'
execute unless score #healthindications.current_absorption sourcecraft.temp matches 1.. if score #healthindications.current_percent sourcecraft.temp matches ..25 run data modify storage healthindications:health_bar temp append value '{"text":"","color":"red"}'

#generate
function healthindications.3:health_bar/bar/simple/generate_string

#add absorption hearts
execute if score #healthindications.current_absorption sourcecraft.temp matches 1.. run data modify storage healthindications:health_bar temp append value '{"text":" ","font":"minecraft:default"}' 
execute if score #healthindications.current_absorption sourcecraft.temp matches 1.. run data modify storage healthindications:health_bar temp append value '{"score":{"name":"#healthindications.current_absorption","objective":"sourcecraft.temp"}}'
execute if score #healthindications.current_absorption sourcecraft.temp matches 1.. run data modify storage healthindications:health_bar temp append value '{"nbt":"icon.health_bar.absorption","storage":"healthindications","interpret":true}'

##modules
#add extra info set by other packs
execute if data storage healthindications health_bar.extra_info run data modify storage healthindications:health_bar temp append value '{"text":" ","font":"minecraft:default"}'
execute if data storage healthindications health_bar.extra_info run data modify storage healthindications:health_bar temp append value '{"nbt":"health_bar.extra_info[]","storage":"healthindications","interpret":true}'