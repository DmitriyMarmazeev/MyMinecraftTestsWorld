execute as @e[tag=particles] at @s run tp @s ^ ^ ^0.5
execute as @e[tag=particles] at @s run particle minecraft:dust{scale:1, color:[0.0, 0.0, 0.0]} ~ ~1 ~ 0.2 0 0.2 0 200 normal
execute as @e[tag=particles] at @e[tag=endOfTrace] if entity @s[distance=..0.5] run kill @s
rotate @e[tag=particles,limit=1] facing entity @e[tag=endOfTrace,limit=1]
schedule function cot:boss/shadowi/slash/trace 1t
execute unless entity @e[tag=particles] if entity @e[tag=freeze,nbt={OnGround:1b}] run function cot:boss/shadowi/slash/slash