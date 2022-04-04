# empty slot

#left
execute if score #healthindications.loop sourcecraft.temp matches 10 run data merge block ~ ~ ~ {Text1:'[{"nbt":"Text1","block":"~ ~ ~","interpret":"true"},{"nbt":"health_bar.icon.custom.empty_left","storage":"healthindications","interpret":true}]'}

#middle
execute if score #healthindications.loop sourcecraft.temp matches 2..9 run data merge block ~ ~ ~ {Text1:'[{"nbt":"Text1","block":"~ ~ ~","interpret":"true"},{"nbt":"health_bar.icon.custom.empty_middle","storage":"healthindications","interpret":true}]'}

#right
execute if score #healthindications.loop sourcecraft.temp matches 1 run data merge block ~ ~ ~ {Text1:'[{"nbt":"Text1","block":"~ ~ ~","interpret":"true"},{"nbt":"health_bar.icon.custom.empty_right","storage":"healthindications","interpret":true}]'}