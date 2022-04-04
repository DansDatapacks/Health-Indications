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

#icon
data modify storage healthindications health_bar.icon.full set value '"■"'
data modify storage healthindications health_bar.icon.half set value '"◧"'
data modify storage healthindications health_bar.icon.empty set value '"□"'
data modify storage healthindications health_bar.icon.custom.full_left set value '"\\ue068"'
data modify storage healthindications health_bar.icon.custom.full_middle set value '"\\ue069"'
data modify storage healthindications health_bar.icon.custom.full_right set value '"\\ue070"'
data modify storage healthindications health_bar.icon.custom.half_left set value '"\\ue071"'
data modify storage healthindications health_bar.icon.custom.half_middle set value '"\\ue072"'
data modify storage healthindications health_bar.icon.custom.half_right set value '"\\ue073"'
data modify storage healthindications health_bar.icon.custom.empty_left set value '"\\ue074"'
data modify storage healthindications health_bar.icon.custom.empty_middle set value '"\\ue075"'
data modify storage healthindications health_bar.icon.custom.empty_right set value '"\\ue076"'
data modify storage healthindications health_bar.icon.absorption.default set value '"❤"'
data modify storage healthindications health_bar.icon.absorption.custom set value '"\\ue030"'

data modify storage healthindications damage_indication.icon.health.default set value '"❤"'
data modify storage healthindications damage_indication.icon.health.custom set value '"\\ue020"'
data modify storage healthindications damage_indication.icon.absorption.custom set value '"\\ue030"'

data modify storage healthindications status_effect.icon.poison set value '"\\ue091"'
data modify storage healthindications status_effect.icon.wither set value '"\\ue092"'
data modify storage healthindications status_effect.icon.resistance set value '"\\ue093"'
data modify storage healthindications status_effect.icon.fire_resistance set value '"\\ue094"'
data modify storage healthindications status_effect.icon.strength set value '"\\ue095"'
data modify storage healthindications status_effect.icon.weakness set value '"\\ue096"'
data modify storage healthindications status_effect.icon.speed set value '"\\ue097"'
data modify storage healthindications status_effect.icon.slowness set value '"\\ue098"'
data modify storage healthindications status_effect.icon.haste set value '"\\ue099"'
data modify storage healthindications status_effect.icon.mining_fatigue set value '"\\ue100"'
data modify storage healthindications status_effect.icon.blindness set value '"\\ue101"'
data modify storage healthindications status_effect.icon.water_breathing set value '"\\ue102"'
data modify storage healthindications status_effect.icon.regeneration set value '"\\ue103"'

#constants
scoreboard players set #3 sourcecraft.data 3
scoreboard players set #2 sourcecraft.data 2

#init features
execute unless score #healthindications.option.damage_indication.toggle sourcecraft.data matches 0.. run scoreboard players set #healthindications.option.damage_indication.toggle sourcecraft.data 1
execute unless score #healthindications.option.health_bar.toggle sourcecraft.data matches 0.. run scoreboard players set #healthindications.option.health_bar.toggle sourcecraft.data 1
execute unless score #healthindications.option.damage_indication.affect_players sourcecraft.data matches 0.. run scoreboard players set #healthindications.option.damage_indication.affect_players sourcecraft.data 1

#start loops
function healthindications.2:loop/per_tick
function healthindications.2:loop/per_5_ticks
function healthindications.2:loop/per_20_ticks