# run options GUI for player

#header space
tellraw @s [{"text":"\n\n\n"}]

#title
tellraw @s [{"text":"[❤]","color":"gray"},{"text":" Health Indications Options","color":"red"}]

#spacer
tellraw @s [{"text":"|","color":"gray"}]

#damage indicator header
execute if score #healthindications.option.damage_indication.toggle sourcecraft.data matches 1 run tellraw @s [{"text":"|","color":"gray"},{"text":" Damage Indications ","color":"white"},{"text":"[Toggle]","color":"green","clickEvent":{"action":"run_command","value":"/function healthindications.2:internal/option/damage_indication/toggle"},"hoverEvent":{"action":"show_text","contents":[{"text":"Toggles Damage Indication Feature (ON)","color":"gray"}]}}]
execute unless score #healthindications.option.damage_indication.toggle sourcecraft.data matches 1 run tellraw @s [{"text":"|","color":"gray"},{"text":" Damage Indications ","color":"white"},{"text":"[Toggle]","color":"red","clickEvent":{"action":"run_command","value":"/function healthindications.2:internal/option/damage_indication/toggle"},"hoverEvent":{"action":"show_text","contents":[{"text":"Toggles Damage Indication Feature (OFF)","color":"gray"}]}}]

#spacer
execute if score #healthindications.option.damage_indication.toggle sourcecraft.data matches 1 run tellraw @s [{"text":"|","color":"gray"}]

#stationary
execute if score #healthindications.option.damage_indication.toggle sourcecraft.data matches 1 if score #healthindications.option.damage_indication.affect_players sourcecraft.data matches 1 run tellraw @s [{"text":"|","color":"gray"},{"text":" "},{"text":"[Affect Players]","color":"green","clickEvent":{"action":"run_command","value":"/function healthindications.2:internal/option/damage_indication/affect_players"},"hoverEvent":{"action":"show_text","contents":[{"text":"Runs Damage Indications on Players (ON)","color":"gray"}]}}]
execute if score #healthindications.option.damage_indication.toggle sourcecraft.data matches 1 unless score #healthindications.option.damage_indication.affect_players sourcecraft.data matches 1 run tellraw @s [{"text":"|","color":"gray"},{"text":" "},{"text":"[Affect Players]","color":"red","clickEvent":{"action":"run_command","value":"/function healthindications.2:internal/option/damage_indication/affect_players"},"hoverEvent":{"action":"show_text","contents":[{"text":"Runs Damage Indications on Players (OFF)","color":"gray"}]}}]

#stationary
execute if score #healthindications.option.damage_indication.toggle sourcecraft.data matches 1 if score #healthindications.option.damage_indication.stationary sourcecraft.data matches 1 run tellraw @s [{"text":"|","color":"gray"},{"text":" "},{"text":"[Stationary]","color":"green","clickEvent":{"action":"run_command","value":"/function healthindications.2:internal/option/damage_indication/stationary"},"hoverEvent":{"action":"show_text","contents":[{"text":"Stops Damage Indicators From Moving (ON)","color":"gray"}]}}]
execute if score #healthindications.option.damage_indication.toggle sourcecraft.data matches 1 unless score #healthindications.option.damage_indication.stationary sourcecraft.data matches 1 run tellraw @s [{"text":"|","color":"gray"},{"text":" "},{"text":"[Stationary]","color":"red","clickEvent":{"action":"run_command","value":"/function healthindications.2:internal/option/damage_indication/stationary"},"hoverEvent":{"action":"show_text","contents":[{"text":"Stops Damage Indicators From Moving (OFF)","color":"gray"}]}}]

#no symbol
execute if score #healthindications.option.damage_indication.toggle sourcecraft.data matches 1 if score #healthindications.option.damage_indication.no_symbol sourcecraft.data matches 1 run tellraw @s [{"text":"|","color":"gray"},{"text":" "},{"text":"[No Symbol]","color":"green","clickEvent":{"action":"run_command","value":"/function healthindications.2:internal/option/damage_indication/no_symbol"},"hoverEvent":{"action":"show_text","contents":[{"text":"Removes The Symbol At The End Of The Damage Indicator (ON)","color":"gray"}]}}]
execute if score #healthindications.option.damage_indication.toggle sourcecraft.data matches 1 unless score #healthindications.option.damage_indication.no_symbol sourcecraft.data matches 1 run tellraw @s [{"text":"|","color":"gray"},{"text":" "},{"text":"[No Symbol]","color":"red","clickEvent":{"action":"run_command","value":"/function healthindications.2:internal/option/damage_indication/no_symbol"},"hoverEvent":{"action":"show_text","contents":[{"text":"Removes The Symbol At The End Of The Damage Indicator (OFF)","color":"gray"}]}}]

#custom texture
execute if score #healthindications.option.damage_indication.toggle sourcecraft.data matches 1 unless score #healthindications.option.damage_indication.no_symbol sourcecraft.data matches 1 if score #healthindications.option.damage_indication.custom_texture sourcecraft.data matches 1 run tellraw @s [{"text":"|","color":"gray"},{"text":" "},{"text":"[Custom Texture]","color":"green","clickEvent":{"action":"run_command","value":"/function healthindications.2:internal/option/damage_indication/custom_texture"},"hoverEvent":{"action":"show_text","contents":[{"text":"Enables Custom Symbol Texture With Resourcepack For Damage Indicators (ON)","color":"gray"}]}}]
execute if score #healthindications.option.damage_indication.toggle sourcecraft.data matches 1 unless score #healthindications.option.damage_indication.no_symbol sourcecraft.data matches 1 unless score #healthindications.option.damage_indication.custom_texture sourcecraft.data matches 1 run tellraw @s [{"text":"|","color":"gray"},{"text":" "},{"text":"[Custom Texture]","color":"red","clickEvent":{"action":"run_command","value":"/function healthindications.2:internal/option/damage_indication/custom_texture"},"hoverEvent":{"action":"show_text","contents":[{"text":"Enables Custom Symbol Texture With Resourcepack For Damage Indicators (OFF)","color":"gray"}]}}]

#spacer
tellraw @s [{"text":"|","color":"gray"}]

#health bar header
execute if score #healthindications.option.health_bar.toggle sourcecraft.data matches 1 run tellraw @s [{"text":"|","color":"gray"},{"text":" Health Bar ","color":"white"},{"text":"[Toggle]","color":"green","clickEvent":{"action":"run_command","value":"/function healthindications.2:internal/option/health_bar/toggle"},"hoverEvent":{"action":"show_text","contents":[{"text":"Toggles Health Bar Feature (ON)","color":"gray"}]}}]
execute unless score #healthindications.option.health_bar.toggle sourcecraft.data matches 1 run tellraw @s [{"text":"|","color":"gray"},{"text":" Health Bar ","color":"white"},{"text":"[Toggle]","color":"red","clickEvent":{"action":"run_command","value":"/function healthindications.2:internal/option/health_bar/toggle"},"hoverEvent":{"action":"show_text","contents":[{"text":"Toggles Health Bar Feature (OFF)","color":"gray"}]}}]

#spacer
execute if score #healthindications.option.health_bar.toggle sourcecraft.data matches 1 run tellraw @s [{"text":"|","color":"gray"}]

#affect players
execute if score #healthindications.option.health_bar.toggle sourcecraft.data matches 1 if score #healthindications.option.health_bar.affect_players sourcecraft.data matches 1 run tellraw @s [{"text":"|","color":"gray"},{"text":" "},{"text":"[Affect Players]","color":"green","clickEvent":{"action":"run_command","value":"/function healthindications.2:internal/option/health_bar/affect_players"},"hoverEvent":{"action":"show_text","contents":[{"text":"Runs Health Bars on Players (ON)","color":"gray"}]}}]
execute if score #healthindications.option.health_bar.toggle sourcecraft.data matches 1 unless score #healthindications.option.health_bar.affect_players sourcecraft.data matches 1 run tellraw @s [{"text":"|","color":"gray"},{"text":" "},{"text":"[Affect Players]","color":"red","clickEvent":{"action":"run_command","value":"/function healthindications.2:internal/option/health_bar/affect_players"},"hoverEvent":{"action":"show_text","contents":[{"text":"Runs Health Bars on Players (OFF)","color":"gray"}]}}]

#custom texture
execute if score #healthindications.option.health_bar.toggle sourcecraft.data matches 1 if score #healthindications.option.health_bar.custom_texture sourcecraft.data matches 1 run tellraw @s [{"text":"|","color":"gray"},{"text":" "},{"text":"[Custom Texture]","color":"green","clickEvent":{"action":"run_command","value":"/function healthindications.2:internal/option/health_bar/custom_texture"},"hoverEvent":{"action":"show_text","contents":[{"text":"Enables Custom Texture With Resourcepack For Health Bars (ON)","color":"gray"}]}}]
execute if score #healthindications.option.health_bar.toggle sourcecraft.data matches 1 unless score #healthindications.option.health_bar.custom_texture sourcecraft.data matches 1 run tellraw @s [{"text":"|","color":"gray"},{"text":" "},{"text":"[Custom Texture]","color":"red","clickEvent":{"action":"run_command","value":"/function healthindications.2:internal/option/health_bar/custom_texture"},"hoverEvent":{"action":"show_text","contents":[{"text":"Enables Custom Texture With Resourcepack For Health Bars (OFF)","color":"gray"}]}}]

#status effects (requires Custom Texture to be on)
execute if score #healthindications.option.health_bar.toggle sourcecraft.data matches 1 if score #healthindications.option.health_bar.custom_texture sourcecraft.data matches 1 if score #healthindications.option.health_bar.status_effects sourcecraft.data matches 1 run tellraw @s [{"text":"|","color":"gray"},{"text":" "},{"text":"[Status Effects]","color":"green","clickEvent":{"action":"run_command","value":"/function healthindications.2:internal/option/health_bar/status_effects"},"hoverEvent":{"action":"show_text","contents":[{"text":"Shows Status Effects of Entities on Health Bars (ON)","color":"gray"}]}}]
execute if score #healthindications.option.health_bar.toggle sourcecraft.data matches 1 if score #healthindications.option.health_bar.custom_texture sourcecraft.data matches 1 unless score #healthindications.option.health_bar.status_effects sourcecraft.data matches 1 run tellraw @s [{"text":"|","color":"gray"},{"text":" "},{"text":"[Status Effects]","color":"red","clickEvent":{"action":"run_command","value":"/function healthindications.2:internal/option/health_bar/status_effects"},"hoverEvent":{"action":"show_text","contents":[{"text":"Shows Status Effects of Entities on Health Bars (OFF)","color":"gray"}]}}]

#spacer
tellraw @s [{"text":"|","color":"gray"}]

#end
tellraw @s [{"text":"[❤]","color":"gray"}]