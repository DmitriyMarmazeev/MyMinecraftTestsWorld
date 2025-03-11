setblock 17 -60 2 minecraft:redstone_block
scoreboard objectives add damaged dummy
execute store result score #playerCount playerCount run execute if entity @a
gamerule fallDamage false