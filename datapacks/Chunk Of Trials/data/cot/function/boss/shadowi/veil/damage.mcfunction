execute as @p[tag=target] store result score @s health run data get entity @s Health
scoreboard players add @p[tag=target] missedHits 1

execute as @p[tag=target] at @s run playsound cot:boss.shadowi.rending master @a ~ ~ ~ 1000 1 1
title @p[tag=target] title {"text":"\uE100"}
execute as @e[tag=shadow_monster] at @s run playsound cot:boss.shadowi.laugh master @a ~ ~ ~ 1000 1 1

scoreboard players add @p[tag=target] health 10
execute if score @p[tag=target] health <= #shadow_monster damageAmount run gamemode spectator @p[tag=target]
$execute if score @p[tag=target] health >= #shadow_monster damageAmount run damage @p[tag=target,gamemode=adventure] $(damage) minecraft:starve

scoreboard players set @p[tag=target] takeDamage 0