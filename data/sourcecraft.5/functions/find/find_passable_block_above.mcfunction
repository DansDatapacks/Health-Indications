# teleport executor up until it hits a passable block (good for getting an entity out of the ground)

#tp up
execute at @s unless block ~ ~ ~ #sourcecraft.5:passable run tp ~ ~.1 ~

#loop
execute at @s unless block ~ ~ ~ #sourcecraft.5:passable run function sourcecraft.5:find/find_passable_block_above