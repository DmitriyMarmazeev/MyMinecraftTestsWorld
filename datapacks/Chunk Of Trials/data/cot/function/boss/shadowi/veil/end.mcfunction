kill @e[tag=shadow_monster]

schedule clear cot:boss/shadowi/veil/end
schedule clear cot:boss/shadowi/veil/start
schedule clear cot:boss/shadowi/veil/damage
schedule clear cot:boss/shadowi/veil/approach

kill @e[tag=monster_spawn_controller]
kill @e[tag=monster_spawn_option]

tag @a remove target

scoreboard objectives remove health
scoreboard objectives remove takeDamage
scoreboard objectives remove damageAmount

data merge storage cot:shadowi {}

execute as @e[tag=boss] run item replace entity @s armor.head with minecraft:wither_skeleton_skull
execute as @e[tag=boss_controller] at @s run tp @s ~ ~3 ~
data merge entity @e[tag=boss_controller,limit=1] {NoAI:0b, Invulnerable:0b,NoGravity:0b}