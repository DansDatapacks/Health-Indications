# add poison to health bar

#add icon to extra info
data modify storage healthindications health_bar.extra_info append from storage healthindications status_effect.icon.poison

#tag health bar to update
scoreboard players set @s healthindications.health_bar.update 1