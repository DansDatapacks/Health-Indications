# init health bar parsing

#set interval
scoreboard players set #healthindications.interval sourcecraft.temp 10
scoreboard players operation #healthindications.half_of_interval sourcecraft.temp = #healthindications.interval sourcecraft.temp
scoreboard players operation #healthindications.half_of_interval sourcecraft.temp /= #2 sourcecraft.data

#set loop
scoreboard players set #healthindications.loop sourcecraft.temp 10

#generate
function healthindications.2:health_bar/bar/custom/generate_string

#add absorption hearts
execute if score #healthindications.current_absorption sourcecraft.temp matches 1.. run data merge block ~ ~ ~ {Text1:'[{"nbt":"Text1","block":"~ ~ ~","interpret":true},{"text":" "},{"score":{"name":"#healthindications.current_absorption","objective":"sourcecraft.temp"}},{"font":"healthindications:heart","translate":"icon.healthindications.damage_indication.absorption_heart","color":"white"}]'}

##modules
#add space
execute unless score #healthindications.current_absorption sourcecraft.temp matches 1.. if data storage healthindications health_bar.extra_info run data merge block ~ ~ ~ {Text1:'[{"nbt":"Text1","block":"~ ~ ~","interpret":true},{"text":" "}]'}
#add extra info set by other packs
execute if data storage healthindications health_bar.extra_info run data merge block ~ ~ ~ {Text1:'[{"nbt":"Text1","block":"~ ~ ~","interpret":true},{"nbt":"health_bar.extra_info[]","storage":"healthindications","interpret":true,"separator":""}]'}