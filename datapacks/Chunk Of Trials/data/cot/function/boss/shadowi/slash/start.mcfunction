tag @p[tag=target] remove target
execute at @e[tag=boss,type=minecraft:armor_stand] as @e[sort=nearest] run tag @p[tag=!damaged] add target
execute at @p[tag=target] run summon minecraft:armor_stand ~ ~ ~ {Tags:["freeze"], Small:1, Invisible:1}
tag @p[tag=target] add damaged
setblock 11 -60 1 minecraft:air
rotate @e[tag=freeze,limit=1] facing entity @e[tag=boss,limit=1]
execute at @e[tag=freeze] run summon minecraft:armor_stand ^ ^ ^-1 {Tags:["endOfTrace"], Motion:[0.0, -10.0, 0.0],Invisible:1}
rotate @e[tag=boss,type=minecraft:vindicator,limit=1] facing entity @p[tag=target]
execute at @e[tag=boss,limit=1] run summon minecraft:armor_stand ~ ~ ~ {Tags:["particles"], Invisible:1}
rotate @e[tag=particles,limit=1] facing entity @e[tag=freeze,limit=1]
execute as @e[tag=particles] at @s run tp @s ~ ~ ~ ~ 0
setblock 10 -60 2 minecraft:redstone_block