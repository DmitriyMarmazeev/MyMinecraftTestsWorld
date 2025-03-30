execute at @e[tag=shadow_monster] run playsound cot:boss.shadowi.approach master @a ~ ~ ~ 1000 1 1

execute as @e[tag=shadow_monster] run item replace entity @s armor.head with minecraft:redstone_block
tag @e[tag=shadow_monster] add shadow_monster_hunting

schedule function cot:boss/shadowi/veil/hunt 7s