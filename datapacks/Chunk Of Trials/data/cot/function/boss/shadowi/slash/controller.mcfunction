execute at @e[tag=freeze,limit=1] run tp @p[tag=target] ~ ~ ~
kill @e[tag=landed,nbt={OnGround:1b}]
execute unless entity @e[tag=freeze] if entity @a[tag=!damaged,gamemode=adventure] run function cot:boss/shadowi/slash/start
execute store result score @e[tag=boss] damaged run execute if entity @a[tag=damaged]
schedule function cot:boss/shadowi/slash/controller 1t
execute unless entity @e[tag=freeze] if score @e[tag=boss,limit=1] damaged = #playerCount playerCount run function cot:boss/shadowi/slash/end