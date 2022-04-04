# starts nbt sign

#if theres another nbt sign currently being used, remove it
execute if entity @e[type=minecraft:marker,tag=sourcecraft.nbt_sign] run function sourcecraft.5:nbt_sign/end

#create marker that will be where the nbt sign is
execute if predicate sourcecraft.5:in_overworld run summon minecraft:marker ~ 319 ~ {Tags:["sourcecraft.nbt_sign","global.ignore"]}
execute unless predicate sourcecraft.5:in_overworld run summon minecraft:marker ~ 255 ~ {Tags:["sourcecraft.nbt_sign","global.ignore"]}

#find an air spot to place the sign
execute as @e[type=minecraft:marker,tag=sourcecraft.nbt_sign,limit=1,sort=nearest] run function #sourcecraft:find_air_block_below_align_to_grid

#place sign
execute at @e[type=minecraft:marker,tag=sourcecraft.nbt_sign,limit=1,sort=nearest] run setblock ~ ~ ~ minecraft:acacia_sign