schedule clear cot:boss/shadowi/slash/controller
tag @a remove damaged
tag @a remove target
scoreboard objectives remove damaged
scoreboard objectives remove blockDamage
scoreboard objectives remove health
execute as @e[tag=boss] run item replace entity @s armor.head with minecraft:wither_skeleton_skull
data merge entity @e[tag=boss_controller,limit=1] {NoAI:0b}