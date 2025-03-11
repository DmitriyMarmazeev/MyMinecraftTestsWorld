damage @p[tag=target] 15 minecraft:player_attack by @e[tag=boss,limit=1]
execute at @e[tag=endOfTrace] run tp @e[tag=boss] ~ ~ ~
execute as @e[tag=freeze] run data merge entity @s {Motion:[0.0, 0.589, 0.0]}
kill @e[tag=endOfTrace]