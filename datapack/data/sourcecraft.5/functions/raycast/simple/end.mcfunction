# end raycast

#mark where the ray ended with an AEC entity
summon minecraft:marker ~ ~ ~ {Tags:["global.ignore","sourcecraft.raycast.ray"]}

#schedule removal of marker
schedule function sourcecraft.5:raycast/remove_raycast_markers 1t