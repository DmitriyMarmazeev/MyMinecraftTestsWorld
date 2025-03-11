setblock 17 -60 2 air
tag @a remove damaged
tag @a remove target
scoreboard objectives remove damaged
scoreboard objectives remove blockDamage
scoreboard objectives remove health
execute as @e[type=armor_stand,tag=boss] run item replace entity @s armor.head with minecraft:wither_skeleton_skull