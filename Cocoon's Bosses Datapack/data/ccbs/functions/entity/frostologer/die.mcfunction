playsound minecraft:entity.pillager.death hostile @a ~ ~ ~
loot spawn ~ ~ ~ loot minecraft:blocks/snow_block
particle minecraft:snowflake ~ ~ ~ 0 0 0 0.1 10

scoreboard players set @s ccbs.state -1

kill @e[type=item_display,tag=ccbs.frostologer_barrier,limit=1,sort=nearest]

bossbar set minecraft:ccbs.frostologer players