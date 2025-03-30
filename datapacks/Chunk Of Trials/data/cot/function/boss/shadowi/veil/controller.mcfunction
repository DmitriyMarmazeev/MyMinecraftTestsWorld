execute as @e[tag=shadow_monster_appearing] at @s run particle minecraft:dust{scale:1, color:[0.0, 0.0, 0.0]} ~ ~1 ~ 0.25 0.5 0.25 0.01 100 normal

execute as @e[tag=shadow_monster_hunting,limit=1] at @s run tp @s ^ ^ ^0.1 facing entity @p[tag=target] eyes

execute if entity @a[gamemode=adventure] if entity @e[tag=shadow_monster] run schedule function cot:boss/shadowi/veil/controller 1t

execute unless entity @a[gamemode=adventure] run function cot:boss/shadowi/veil/end
execute unless entity @e[tag=shadow_monster] run function cot:boss/shadowi/veil/end