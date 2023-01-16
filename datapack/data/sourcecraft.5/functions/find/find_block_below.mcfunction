# teleport executor down until it hits a block

#tp down
execute at @s if block ~ ~-.1 ~ #sourcecraft.5:passable run tp ~ ~-.1 ~

#loop
execute at @s if block ~ ~-.1 ~ #sourcecraft.5:passable run function sourcecraft.5:find/find_block_below