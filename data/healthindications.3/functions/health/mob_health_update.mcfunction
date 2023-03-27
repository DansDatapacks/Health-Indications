# runs when an entity has taken damage/healed health

#update health percent
function healthindications.3:health/get_health_percent

#calculate health difference
function healthindications.3:health/calculate_health_difference

#calculate absorption difference
function healthindications.3:health/calculate_absorption_difference

#run mob health update module trigger
function #healthindications:modules/mob_health_update

#run health bar
execute if score #healthindications.option.health_bar.toggle sourcecraft.data matches 1 if entity @s[tag=!global.ignore,tag=!healthindications.ignore,tag=!healthindications.no_health_bar,type=!#healthindications.3:healthbar_ignore] at @s run function healthindications.3:health_bar/trigger_health_bar

#run damage indication
execute if score #healthindications.option.damage_indication.toggle sourcecraft.data matches 1 if entity @s[tag=!global.ignore,tag=!healthindications.ignore,tag=!healthindications.no_damage_indications] at @s run function healthindications.3:damage_indication/run_damage_indication