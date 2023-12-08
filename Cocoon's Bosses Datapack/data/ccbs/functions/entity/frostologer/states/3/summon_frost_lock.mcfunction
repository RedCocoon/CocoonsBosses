execute as @a[limit=5,sort=nearest] at @s positioned ~ ~0.5 ~ run function ccbs:circle/frost_lock/summon
scoreboard players set @s ccbs.timer2 6
execute if function ccbs:entity/frostologer/return/is_phase_2 run scoreboard players set @s ccbs.timer2 2
scoreboard players remove @s ccbs.counter 1