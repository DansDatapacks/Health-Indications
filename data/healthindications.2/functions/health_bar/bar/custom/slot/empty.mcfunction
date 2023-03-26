# empty slot

#left
execute if score #healthindications.loop sourcecraft.temp matches 10 run data merge block ~ ~ ~ {Text1:'[{"nbt":"Text1","block":"~ ~ ~","interpret":"true"},{"font":"healthindications:health_bar","translate":"icon.healthindications.health_bar.empty_left"}]'}

#middle
execute if score #healthindications.loop sourcecraft.temp matches 2..9 run data merge block ~ ~ ~ {Text1:'[{"nbt":"Text1","block":"~ ~ ~","interpret":"true"},{"font":"healthindications:health_bar","translate":"icon.healthindications.health_bar.empty_middle"}]'}

#right
execute if score #healthindications.loop sourcecraft.temp matches 1 run data merge block ~ ~ ~ {Text1:'[{"nbt":"Text1","block":"~ ~ ~","interpret":"true"},{"font":"healthindications:health_bar","translate":"icon.healthindications.health_bar.empty_right"}]'}