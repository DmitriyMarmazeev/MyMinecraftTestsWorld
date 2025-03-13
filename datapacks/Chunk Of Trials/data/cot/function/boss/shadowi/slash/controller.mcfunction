execute at @e[tag=freeze,limit=1] run tp @p[tag=target] ~ ~ ~
kill @e[tag=landed,nbt={OnGround:1b}]
execute unless entity @e[tag=freeze] if entity @a[tag=!damaged,gamemode=adventure] run setblock 11 -60 1 minecraft:redstone_block
execute store result score @e[tag=boss,type=minecraft:armor_stand] damaged run execute if entity @a[tag=damaged]
execute unless entity @e[tag=freeze] if score @e[tag=boss,type=minecraft:armor_stand,limit=1] damaged = #playerCount playerCount run function cot:boss/shadowi/slash/end