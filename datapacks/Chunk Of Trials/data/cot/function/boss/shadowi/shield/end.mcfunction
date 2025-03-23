schedule clear cot:boss/shadowi/shield/end

kill @e[tag=boss_shield]
kill @e[tag=shield_part]

scoreboard objectives add healModifier dummy
execute as @e[tag=boss_controller] store result score @s healthAfter run data get entity @s Health
execute as @e[tag=boss_controller] run scoreboard players operation @s healModifier = @s healthAfter
execute as @e[tag=boss_controller] run scoreboard players operation @s healModifier -= @s healthBefore
execute as @e[tag=boss_controller] run scoreboard players operation @s healModifier *= #playerCount playerCount
execute as @e[tag=boss_controller] run scoreboard players operation @s healthAfter += @s healModifier
execute as @e[tag=boss_controller] run scoreboard players add @s healthBefore 80

execute as @e[tag=boss_controller] if score @s healthAfter < @s healthBefore run effect give @s regeneration 5 8 true
execute as @e[tag=boss_controller] if score @s healthAfter >= @s healthBefore store result entity @s Health float 1.0 run scoreboard players get @s healthAfter

scoreboard objectives remove bossShieldRotation
scoreboard objectives remove healthBefore
scoreboard objectives remove healthAfter
scoreboard objectives remove healModifier