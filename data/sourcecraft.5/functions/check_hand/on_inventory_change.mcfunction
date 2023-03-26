# triggers when a players inventory changes

#reset right click detect
tag @s remove sourcecraft.click_detect

#run inventory update tag
function #sourcecraft:modules/inventory_update

#run hand check tag
function #sourcecraft:modules/check_hand

#reset trigger 1 tick later
schedule function sourcecraft.5:scheduled/revoke_inventory_change 1t replace