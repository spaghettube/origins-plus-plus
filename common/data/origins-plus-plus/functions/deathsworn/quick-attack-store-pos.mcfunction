execute if data storage origins-plus-plus:deathsworn Motion run kill

execute if data storage origins-plus-plus:deathsworn pos1 run data modify storage origins-plus-plus:deathsworn pos2 set from entity @s Pos
execute unless data storage origins-plus-plus:deathsworn pos2 run data modify storage origins-plus-plus:deathsworn pos1 set from entity @s Pos

#execute if data storage origins-plus-plus:deathsworn pos1 run tellraw @a [{"text":"pos1:"},{"nbt":"Pos","entity":"@s"}]
#execute if data storage origins-plus-plus:deathsworn pos2 run tellraw @a [{"text":"pos2:"},{"nbt":"Pos","entity":"@s"}]