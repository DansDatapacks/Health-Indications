# detect click

#end click detector
execute as @a[tag=sourcecraft.click_detect.running,tag=!sourcecraft.click_detect] at @s run function sourcecraft.5:click_detect/detector/end_click_detect

#init click detector
execute as @a[tag=sourcecraft.click_detect,tag=!sourcecraft.click_detect.running] at @s run function sourcecraft.5:click_detect/detector/init_click_detect

#sync click detector
execute as @a[tag=sourcecraft.click_detect,tag=sourcecraft.click_detect.running] at @s run function sourcecraft.5:click_detect/detector/run_click_detect

#schedule to run again next tick
schedule function sourcecraft.5:loop/detect_click 1t replace