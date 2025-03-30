execute as @e[tag=shadow_monster,limit=1] at @s run damage @p[tag=target,distance=..1.5] 10 minecraft:player_attack by @s

tag @e[tag=shadow_monster] remove shadow_monster_appearing
tag @e[tag=shadow_monster] remove shadow_monster_hunting

execute as @e[tag=boss] run item replace entity @s armor.head with minecraft:air

execute if entity @p[tag=target,scores={takeDamage=1..}] run function cot:boss/shadowi/veil/damage with storage cot:shadowi veil_attack

execute if entity @a[gamemode=adventure] run schedule function cot:boss/shadowi/veil/start 10s