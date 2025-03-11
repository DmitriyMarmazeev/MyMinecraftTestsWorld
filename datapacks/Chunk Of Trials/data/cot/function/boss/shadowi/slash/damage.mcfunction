execute as @a[tag=target] store result score @s health run data get entity @s Health
scoreboard players add @p[tag=target] missedHits 1
execute as @p[tag=target] at @s run playsound cot:boss.shadowi.slash master @a ~ ~ ~ 1000 1 1
gamemode spectator @p[tag=target,scores={health=..15}]
damage @p[tag=target,gamemode=adventure,scores={health=16..}] 25 minecraft:starve