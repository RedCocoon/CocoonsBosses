## ONLY MODIFY THE VALUES OF THESE
## In absolute heart scale (normal Minecraft heart)
scoreboard players set frostologer.health ccbs.config 300
scoreboard players set frostologer.phase_2_health ccbs.config 150



## DO NOT MODIFY THESE
scoreboard players operation frostologer.health_scaled ccbs.config = frostologer.health ccbs.config
scoreboard players operation frostologer.health_scaled ccbs.config *= 100 ccbs.cal

scoreboard players operation frostologer.phase_2_health_scaled ccbs.config = frostologer.phase_2_health ccbs.config
scoreboard players operation frostologer.phase_2_health_scaled ccbs.config *= 100 ccbs.cal