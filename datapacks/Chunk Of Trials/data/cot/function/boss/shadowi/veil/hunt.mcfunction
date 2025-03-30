execute as @e[tag=shadow_monster,limit=1] at @s run damage @p[tag=target,distance=..3] 10 minecraft:player_attack by @s

execute as @e[tag=shadow_monster] run item replace entity @s armor.head with minecraft:air

execute if entity @p[tag=target,scores={takeDamage=1..}] run function cot:boss/shadowi/veil/damage with storage cot:shadowi veil_attack

tag @e[tag=shadow_monster] remove shadow_monster_appearing

execute if entity @a[gamemode=adventure] run schedule function cot:boss/shadowi/veil/start 10s