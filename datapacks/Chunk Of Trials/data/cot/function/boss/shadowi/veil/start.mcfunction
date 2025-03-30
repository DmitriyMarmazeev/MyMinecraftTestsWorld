tag @a[limit=1,sort=random] add target

execute at @p[tag=target] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["monster_spawn_controller"],Marker:1b,NoGravity:1b}
execute as @e[tag=monster_spawn_controller] at @p[tag=target] run tp @s ~ ~ ~ ~ 0

execute at @e[tag=monster_spawn_controller] run summon armor_stand ^ ^ ^-3 {Tags:["monster_spawn_option"],Marker:1b,NoGravity:1b}
execute at @e[tag=monster_spawn_controller] run summon armor_stand ^ ^ ^3 {Tags:["monster_spawn_option"],Marker:1b,NoGravity:1b}
execute at @e[tag=monster_spawn_controller] run summon armor_stand ^3 ^ ^ {Tags:["monster_spawn_option"],Marker:1b,NoGravity:1b}
execute at @e[tag=monster_spawn_controller] run summon armor_stand ^-3 ^ ^ {Tags:["monster_spawn_option"],Marker:1b,NoGravity:1b}
kill @e[tag=monster_spawn_controller]

tp @e[tag=shadow_monster] @e[limit=1,tag=monster_spawn_option,sort=random]
kill @e[tag=monster_spawn_option]
rotate @e[tag=shadow_monster,limit=1] facing entity @p[tag=target]

tag @e[tag=shadow_monster] add shadow_monster_appearing

schedule function cot:boss/shadowi/veil/approach 3s