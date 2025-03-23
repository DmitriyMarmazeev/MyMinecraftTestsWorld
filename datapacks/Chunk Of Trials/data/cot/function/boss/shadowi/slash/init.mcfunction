setblock 17 -60 2 minecraft:redstone_block
scoreboard objectives add damaged dummy
execute store result score #playerCount playerCount run execute if entity @a[gamemode=adventure]
scoreboard objectives add blockDamage minecraft.used:minecraft.shield
scoreboard players set @a blockDamage 0
scoreboard objectives add health dummy
execute as @e[tag=boss] run item replace entity @s armor.head with minecraft:coal_block