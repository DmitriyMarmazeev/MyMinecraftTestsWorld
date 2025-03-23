scoreboard objectives add bossShieldRotation dummy
scoreboard objectives add healthBefore dummy
scoreboard objectives add healthAfter dummy
execute as @e[tag=boss_controller] store result score @s healthBefore run data get entity @s Health
execute store result score #playerCount playerCount run execute if entity @a[gamemode=adventure]

execute as @e[tag=boss_controller] at @s run summon armor_stand ~ ~ ~ {Tags:["boss_shield"], Invisible:1b, NoGravity:1b, Marker:1b}

execute as @e[tag=boss_shield] at @s run summon armor_stand ^2 ^ ^ {Tags:["shield_part", "part1"], Invisible:1b, NoGravity:1b, Marker:1b}
execute as @e[tag=boss_shield] at @s run summon armor_stand ^-2 ^ ^ {Tags:["shield_part", "part2"], Invisible:1b, NoGravity:1b, Marker:1b}
execute as @e[tag=boss_shield] at @s run summon armor_stand ^ ^ ^2 {Tags:["shield_part", "part3"], Invisible:1b, NoGravity:1b, Marker:1b}
execute as @e[tag=boss_shield] at @s run summon armor_stand ^ ^ ^-2 {Tags:["shield_part", "part4"], Invisible:1b, NoGravity:1b, Marker:1b}
execute as @e[tag=boss_shield] at @s run summon armor_stand ^1.41 ^ ^1.41 {Tags:["shield_part", "part5"], Invisible:1b, NoGravity:1b, Marker:1b}
execute as @e[tag=boss_shield] at @s run summon armor_stand ^1.41 ^ ^-1.41 {Tags:["shield_part", "part6"], Invisible:1b, NoGravity:1b, Marker:1b}
execute as @e[tag=boss_shield] at @s run summon armor_stand ^-1.41 ^ ^1.41 {Tags:["shield_part", "part7"], Invisible:1b, NoGravity:1b, Marker:1b}
execute as @e[tag=boss_shield] at @s run summon armor_stand ^-1.41 ^ ^-1.41 {Tags:["shield_part", "part8"], Invisible:1b, NoGravity:1b, Marker:1b}

schedule function cot:boss/shadowi/shield/end 54s

function cot:boss/shadowi/shield/controller