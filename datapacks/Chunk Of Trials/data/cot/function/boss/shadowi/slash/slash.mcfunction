damage @p[tag=target] 10 minecraft:player_attack by @e[tag=boss,limit=1]
execute at @e[tag=endOfTrace] run tp @e[tag=boss_controller] ~ ~ ~
execute as @e[tag=freeze] run data merge entity @s {Motion:[0.0, 0.589, 0.0]}
kill @e[tag=endOfTrace]
execute if entity @p[tag=target,scores={blockDamage=0}] run function cot:boss/shadowi/slash/damage
scoreboard players set @a blockDamage 0