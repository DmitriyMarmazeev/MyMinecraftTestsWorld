execute unless entity @a[gamemode=adventure] run function cot:boss/shadowi/shield/end

execute at @e[tag=boss_controller,limit=1] run tp @e[tag=boss_shield,limit=1] ~ ~ ~
execute as @e[tag=boss_shield,limit=1] at @s if score @s bossShieldRotation matches 0..537 run rotate @s ~3 0
execute as @e[tag=boss_shield,limit=1] at @s if score @s bossShieldRotation matches 540..1077 run rotate @s ~-3 0

scoreboard players add @e[tag=boss_shield,limit=1] bossShieldRotation 3
execute as @e[tag=boss_shield,limit=1] if score @e[tag=boss_shield,limit=1] bossShieldRotation matches 1080.. run scoreboard players remove @s bossShieldRotation 1080

execute as @e[tag=shield_part] at @s run particle minecraft:dust{scale:1, color:[0.0, 0.0, 0.0]} ^0.5 ^1 ^ 0.2 0.47 0.2 0.01 50 normal

execute as @e[tag=shield_part] at @s if score @e[tag=boss_shield,limit=1] bossShieldRotation matches 0..537 run particle minecraft:dust{scale:1, color:[0.0, 1.0, 0.0]} ^0.5 ^1 ^-0.2 0.01 0.01 0.01 0.01 10 normal
execute as @e[tag=shield_part] at @s if score @e[tag=boss_shield,limit=1] bossShieldRotation matches 540..1077 run particle minecraft:dust{scale:1, color:[1.0, 0.0, 0.0]} ^0.5 ^1 ^-0.2 0.01 0.01 0.01 0.01 10 normal

execute as @e[tag=part1,limit=1] at @e[tag=boss_shield] run tp @s ^2 ^ ^ facing entity @e[tag=boss_shield,limit=1]
execute as @e[tag=part2,limit=1] at @e[tag=boss_shield] run tp @s ^-2 ^ ^ facing entity @e[tag=boss_shield,limit=1]
execute as @e[tag=part3,limit=1] at @e[tag=boss_shield] run tp @s ^ ^ ^2 facing entity @e[tag=boss_shield,limit=1]
execute as @e[tag=part4,limit=1] at @e[tag=boss_shield] run tp @s ^ ^ ^-2 facing entity @e[tag=boss_shield,limit=1]
execute as @e[tag=part5,limit=1] at @e[tag=boss_shield] run tp @s ^1.41 ^ ^1.41 facing entity @e[tag=boss_shield,limit=1]
execute as @e[tag=part6,limit=1] at @e[tag=boss_shield] run tp @s ^1.41 ^ ^-1.41 facing entity @e[tag=boss_shield,limit=1]
execute as @e[tag=part7,limit=1] at @e[tag=boss_shield] run tp @s ^-1.41 ^ ^1.41 facing entity @e[tag=boss_shield,limit=1]
execute as @e[tag=part8,limit=1] at @e[tag=boss_shield] run tp @s ^-1.41 ^ ^-1.41 facing entity @e[tag=boss_shield,limit=1]

execute if score #playerCount playerCount matches 2.. at @e[tag=boss_controller] run kill @e[type=minecraft:arrow,distance=..2.5]

execute if score @e[tag=boss_shield,limit=1] bossShieldRotation matches 0..537 run effect give @e[tag=boss_controller] minecraft:regeneration 5 3 true
execute if score @e[tag=boss_shield,limit=1] bossShieldRotation matches 0..537 run effect give @e[tag=boss_controller] minecraft:speed 1 1 true
execute if score @e[tag=boss_shield,limit=1] bossShieldRotation matches 0..537 run effect give @e[tag=boss_controller] minecraft:resistance 1 2 true
execute if score @e[tag=boss_shield,limit=1] bossShieldRotation matches 0..537 run effect give @e[tag=boss_controller] minecraft:absorption 1 2 true

execute as @e[tag=boss_shield,limit=1] if score @s bossShieldRotation matches 540..1077 at @s run effect give @a[distance=..2] minecraft:slowness 2 3 true
execute as @e[tag=boss_shield,limit=1] if score @s bossShieldRotation matches 540..1077 at @s run effect give @a[distance=..2] minecraft:nausea 5 3 true
execute as @e[tag=boss_shield,limit=1] if score @s bossShieldRotation matches 540..1077 at @s run effect give @a[distance=..2] minecraft:weakness 4 1 true
execute as @e[tag=boss_shield,limit=1] if score @s bossShieldRotation matches 540..1077 at @s run effect give @a[distance=..2] minecraft:mining_fatigue 2 3 true

execute if entity @e[tag=boss_shield] if entity @a[gamemode=adventure] run schedule function cot:boss/shadowi/shield/controller 1t