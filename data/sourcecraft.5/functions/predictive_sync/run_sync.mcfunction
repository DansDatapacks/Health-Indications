# runs syncing of position of executor to target

#predict pos of entity
execute as @e[tag=sourcecraft.predictive_sync.target,limit=1,sort=nearest] at @s run function sourcecraft.5:predictive_sync/get_target_pos

#sync
function sourcecraft.5:predictive_sync/sync_pos

#reset temp tags
tag @e[tag=sourcecraft.predictive_sync.target,limit=1,sort=nearest] remove sourcecraft.predictive_sync.target