# init health bar parsing

#set interval
scoreboard players set #healthindications.interval sourcecraft.temp 10
scoreboard players operation #healthindications.half_of_interval sourcecraft.temp = #healthindications.interval sourcecraft.temp
scoreboard players operation #healthindications.half_of_interval sourcecraft.temp /= #2 sourcecraft.data

#set loop
scoreboard players set #healthindications.loop sourcecraft.temp 10

#init color
execute if score #healthindications.current_absorption sourcecraft.temp matches 1.. run data merge block ~ ~ ~ {Text1:'[{"text":"","color":"yellow"}]'}
execute unless score #healthindications.current_absorption sourcecraft.temp matches 1.. if score #healthindications.current_percent sourcecraft.temp matches 75.. run data merge block ~ ~ ~ {Text1:'[{"text":"","color":"green"}]'}
execute unless score #healthindications.current_absorption sourcecraft.temp matches 1.. if score #healthindications.current_percent sourcecraft.temp matches 25..75 run data merge block ~ ~ ~ {Text1:'[{"text":"","color":"yellow"}]'}
execute unless score #healthindications.current_absorption sourcecraft.temp matches 1.. if score #healthindications.current_percent sourcecraft.temp matches ..25 run data merge block ~ ~ ~ {Text1:'[{"text":"","color":"red"}]'}

#generate
function healthindications.2:health_bar/bar/simple/generate_string

#add absorption hearts
execute if score #healthindications.current_absorption sourcecraft.temp matches 1.. run data merge block ~ ~ ~ {Text1:'[{"nbt":"Text1","block":"~ ~ ~","interpret":true},{"text":" "},{"score":{"name":"#healthindications.current_absorption","objective":"sourcecraft.temp"}},{"nbt":"health_bar.icon.absorption.default","storage":"healthindications","interpret":true}]'}

##modules
#add extra info set by other packs
execute if data storage healthindications health_bar.extra_info run data merge block ~ ~ ~ {Text1:'[{"nbt":"Text1","block":"~ ~ ~","interpret":true},{"nbt":"health_bar.extra_info[0]","storage":"healthindications","interpret":true}]'}