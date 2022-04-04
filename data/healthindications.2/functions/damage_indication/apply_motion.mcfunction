# applies upward motion to damage indicators

#init gravity
execute unless score @s healthindications.damage_indicator.gravity matches 0.. run scoreboard players set @s healthindications.damage_indicator.gravity 8 

#get current Y pos
execute store result score #PosY sourcecraft.temp run data get entity @s Pos[1] 32

#move upwards
execute store result entity @s Pos[1] double .03125 run scoreboard players operation #PosY sourcecraft.temp += @s healthindications.damage_indicator.gravity

#move slower each time
execute if score @s healthindications.damage_indicator.gravity matches 2.. run scoreboard players remove @s healthindications.damage_indicator.gravity 1