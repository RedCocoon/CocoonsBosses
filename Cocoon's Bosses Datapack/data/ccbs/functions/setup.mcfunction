tellraw @a [{"translate":"ccbs.error.cocoons_bosses_pack_not_loaded","color":"red"},{"text":"\n"},{"translate":"ccbs.error.click_to_download_resource_pack_v1.0","color":"red","clickEvent":{"action":"open_url","value":"https://www.github.com/RedCocoon/CocoonsTrinkets/releases/"}}]
scoreboard objectives add ccbs.cal dummy
scoreboard objectives add ccbs.cal2 dummy
scoreboard objectives add ccbs.cal3 dummy

scoreboard objectives add ccbs.timer dummy
scoreboard objectives add ccbs.timer2 dummy

scoreboard objectives add ccbs.counter dummy
scoreboard objectives add ccbs.counter2 dummy

scoreboard objectives add ccbs.state dummy

scoreboard objectives add ccbs.config dummy

scoreboard objectives add ccbs.wfoas_used minecraft.used:minecraft.warped_fungus_on_a_stick


scoreboard players set -1 ccbs.cal -1
scoreboard players set 5 ccbs.cal 5
scoreboard players set 375 ccbs.cal 375
scoreboard players set 25 ccbs.cal 25
scoreboard players set 100 ccbs.cal 100
scoreboard players set 2000 ccbs.cal 2000
scoreboard players set 360000 ccbs.cal 360000

function ccbs:config

scoreboard objectives add ccbs.health dummy
scoreboard objectives add ccbs.hit_cd dummy
##scoreboard objectives add ccbs.sneak minecraft.custom:minecraft.sneak_time
##scoreboard objectives add ccbs.used minecraft.used:minecraft.carrot_on_a_stick

bossbar add ccbs.frostologer {"text":"Frostologer"}
bossbar set minecraft:ccbs.frostologer color blue
bossbar set minecraft:ccbs.frostologer style notched_6
