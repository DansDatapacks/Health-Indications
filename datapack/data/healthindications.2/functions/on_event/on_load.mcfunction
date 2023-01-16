# runs every load/reload

#variables
scoreboard objectives add healthindications.health dummy
scoreboard objectives add healthindications.health.previous dummy
scoreboard objectives add healthindications.health.percent dummy
scoreboard objectives add healthindications.absorption dummy
scoreboard objectives add healthindications.absorption.previous dummy
scoreboard objectives add healthindications.damage_indicator.gravity dummy
scoreboard objectives add healthindications.damage_indicator.duration dummy
scoreboard objectives add healthindications.health_bar.ID dummy
scoreboard objectives add healthindications.health_bar.despawn dummy
scoreboard objectives add healthindications.health_bar.update dummy

#icons
data modify storage healthindications icon.health_bar.full set value '"■"'
data modify storage healthindications icon.health_bar.half set value '"◧"'
data modify storage healthindications icon.health_bar.empty set value '"□"'
data modify storage healthindications icon.health_bar.absorption set value '"❤"'
data modify storage healthindications icon.damage_indication.heart set value '"❤"'
data modify storage healthindications icon.damage_indication.absorption_heart set value '"❤"'

#constants
scoreboard players set #3 sourcecraft.data 3
scoreboard players set #2 sourcecraft.data 2

#preset settings
execute unless score #healthindications.option.damage_indication.toggle sourcecraft.data matches 0.. run scoreboard players set #healthindications.option.damage_indication.toggle sourcecraft.data 1
execute unless score #healthindications.option.health_bar.toggle sourcecraft.data matches 0.. run scoreboard players set #healthindications.option.health_bar.toggle sourcecraft.data 1
execute unless score #healthindications.option.damage_indication.affect_players sourcecraft.data matches 0.. run scoreboard players set #healthindications.option.damage_indication.affect_players sourcecraft.data 1

#start loops
function healthindications.2:loop/per_tick
function healthindications.2:loop/per_5_ticks
function healthindications.2:loop/per_20_ticks