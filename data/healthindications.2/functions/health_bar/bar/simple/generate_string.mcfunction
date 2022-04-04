# generate string

#full bar
execute if score #healthindications.current_percent sourcecraft.temp > #healthindications.half_of_interval sourcecraft.temp run data merge block ~ ~ ~ {Text1:'[{"nbt":"Text1","block":"~ ~ ~","interpret":true},{"nbt":"health_bar.icon.full","storage":"healthindications","interpret":true}]'}

#half empty bar
execute unless score #healthindications.current_percent sourcecraft.temp > #healthindications.half_of_interval sourcecraft.temp if score #healthindications.current_percent sourcecraft.temp matches 1.. run data merge block ~ ~ ~ {Text1:'[{"nbt":"Text1","block":"~ ~ ~","interpret":true},{"nbt":"health_bar.icon.half","storage":"healthindications","interpret":true}]'}

#empty bar
execute unless score #healthindications.current_percent sourcecraft.temp > #healthindications.half_of_interval sourcecraft.temp unless score #healthindications.current_percent sourcecraft.temp matches 1.. run data merge block ~ ~ ~ {Text1:'[{"nbt":"Text1","block":"~ ~ ~","interpret":true},{"nbt":"health_bar.icon.empty","storage":"healthindications","interpret":true}]'}

#update position through the bar
scoreboard players operation #healthindications.current_percent sourcecraft.temp -= #healthindications.interval sourcecraft.temp

#next loop
scoreboard players remove #healthindications.loop sourcecraft.temp 1

#loop
execute if score #healthindications.loop sourcecraft.temp matches 1.. run function healthindications.2:health_bar/bar/simple/generate_string