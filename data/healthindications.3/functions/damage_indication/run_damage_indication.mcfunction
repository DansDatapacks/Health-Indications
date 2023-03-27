# runs a damage indicator when executor's health changes

#init nbt sign
function #sourcecraft:start_nbt_sign

#parse health change
execute unless score #healthindications.health_difference sourcecraft.temp matches 0 run function healthindications.3:damage_indication/init_health_indication

#parse absorption change
execute if score #healthindications.health_difference sourcecraft.temp matches 0 positioned ~ ~ ~ unless score #healthindications.absorption_difference sourcecraft.temp matches 0 run function healthindications.3:damage_indication/init_absorption_indication
execute unless score #healthindications.health_difference sourcecraft.temp matches 0 positioned ~ ~0.26 ~ unless score #healthindications.absorption_difference sourcecraft.temp matches 0 run function healthindications.3:damage_indication/init_absorption_indication

#end nbt sign
function #sourcecraft:end_nbt_sign