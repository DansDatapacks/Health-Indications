# ignore better sync on certain entities

# reset tag
tag @e[type=minecraft:text_display,tag=healthindications.health_bar.execute,limit=1] remove healthindications.health_bar.better_sync.ignore

# players
execute if entity @s[type=minecraft:player] run tag @e[type=minecraft:text_display,tag=healthindications.health_bar.execute,limit=1] add healthindications.health_bar.better_sync.ignore

# ridables
execute unless score #healthindications.option.health_bar.sync_ridables sourcecraft.data matches 1 if entity @s[type=#healthindications.3:ridable] run tag @e[type=minecraft:text_display,tag=healthindications.health_bar.execute,limit=1] add healthindications.health_bar.better_sync.ignore

# saddled
execute unless score #healthindications.option.health_bar.sync_ridables sourcecraft.data matches 1 if entity @s[type=#healthindications.3:saddleable] if data entity @s {Saddle:1b} run tag @e[type=minecraft:text_display,tag=healthindications.health_bar.execute,limit=1] add healthindications.health_bar.better_sync.ignore