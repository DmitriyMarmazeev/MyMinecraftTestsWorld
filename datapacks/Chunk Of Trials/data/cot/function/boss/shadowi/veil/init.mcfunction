data merge entity @e[tag=boss_controller,limit=1] {NoAI:1b, Invulnerable:1b,NoGravity:1b}
execute as @e[tag=boss] run item replace entity @s armor.head with minecraft:air
execute as @e[tag=boss_controller] at @s run tp @s ~ ~3 ~

scoreboard objectives add health dummy
scoreboard objectives add takeDamage minecraft.custom:minecraft.damage_resisted
scoreboard players set @a takeDamage 0

execute store result score #playerCount playerCount run execute if entity @a[gamemode=adventure]
scoreboard objectives add damageAmount dummy
scoreboard players set #shadow_monster damageAmount 2
scoreboard players operation #shadow_monster damageAmount *= #playerCount playerCount
scoreboard players add #shadow_monster damageAmount 10
data modify storage cot:shadowi veil_attack set value {"damage":0}
execute store result storage cot:shadowi veil_attack.damage int 1 run scoreboard players get #shadow_monster damageAmount

effect give @a minecraft:darkness 89 1 true
#effect give @a minecraft:blindness 89 0 true

execute at @e[tag=boss_controller] run playsound cot:boss.shadowi.atmosphere master @a ~ ~ ~ 1000 1 1

execute at @e[tag=boss_controller] run summon armor_stand ~ ~ ~ {Tags:["shadow_monster"],Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b}

schedule function cot:boss/shadowi/veil/end 89s
schedule function cot:boss/shadowi/veil/start 10s

function cot:boss/shadowi/veil/controller