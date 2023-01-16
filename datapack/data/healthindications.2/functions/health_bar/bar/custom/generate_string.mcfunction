# generate string

#full bar
execute if score #healthindications.current_percent sourcecraft.temp > #healthindications.half_of_interval sourcecraft.temp run function healthindications.2:health_bar/bar/custom/slot/full

#half empty bar
execute unless score #healthindications.current_percent sourcecraft.temp > #healthindications.half_of_interval sourcecraft.temp if score #healthindications.current_percent sourcecraft.temp matches 1.. run function healthindications.2:health_bar/bar/custom/slot/half

#empty bar
execute unless score #healthindications.current_percent sourcecraft.temp > #healthindications.half_of_interval sourcecraft.temp unless score #healthindications.current_percent sourcecraft.temp matches 1.. run function healthindications.2:health_bar/bar/custom/slot/empty

#add negative space
execute if score #healthindications.loop sourcecraft.temp matches 1.. run data merge block ~ ~ ~ {Text1:'[{"nbt":"Text1","block":"~ ~ ~","interpret":"true"},{"font":"space:default","translate":"space.-1"}]'}

#update position through the bar
scoreboard players operation #healthindications.current_percent sourcecraft.temp -= #healthindications.interval sourcecraft.temp

#next loop
scoreboard players remove #healthindications.loop sourcecraft.temp 1

#loop
execute if score #healthindications.loop sourcecraft.temp matches 1.. run function healthindications.2:health_bar/bar/custom/generate_string