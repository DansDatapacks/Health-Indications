# ends all nbt signs

#remove sign at nbt sign marker
execute at @e[type=minecraft:marker,tag=sourcecraft.nbt_sign] run setblock ~ ~ ~ air

#remove marker
kill @e[type=minecraft:marker,tag=sourcecraft.nbt_sign]