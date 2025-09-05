### clear items
execute if entity @s[type=item] store result score @a[sort=nearest,limit=1] UUID0_temp run data get entity @s Thrower[0]
execute if entity @s[type=item] store result score @a[sort=nearest,limit=1] UUID1_temp run data get entity @s Thrower[1]
execute if entity @s[type=item] store result score @a[sort=nearest,limit=1] Minion_Count_temp run data get entity @s Item.tag.Minion_Count
execute if entity @s[type=item] as @e[tag=Standby_Minion] if score @s Minion_Count = @a[sort=nearest,limit=1] Minion_Count_temp if score @s UUID0 = @a[sort=nearest,limit=1] UUID0 if score @s UUID1 = @a[sort=nearest,limit=1] UUID1 run say killed
execute if entity @s[type=item] as @e[tag=Standby_Minion] if score @s Minion_Count = @a[sort=nearest,limit=1] Minion_Count_temp if score @s UUID0 = @a[sort=nearest,limit=1] UUID0 if score @s UUID1 = @a[sort=nearest,limit=1] UUID1 run kill
execute if entity @s[type=item] run kill
execute if entity @s[type=item] run scoreboard players reset @a[sort=nearest,limit=1] Minion_Count_temp
execute if entity @s[type=item] run scoreboard players reset @a[sort=nearest,limit=1] UUID0_temp
execute if entity @s[type=item] run scoreboard players reset @a[sort=nearest,limit=1] UUID1_temp


### clear minions
execute if entity @s[tag=Living_Placeholder] at @s as @e[tag=Death_Timer_Start] if score @s Minion_Count = @e[tag=Living_Placeholder,limit=1,distance=..0.1] Minion_Count if score @s UUID0 = @e[tag=Living_Placeholder,limit=1,distance=..0.1] UUID0 if score @s UUID1 = @e[tag=Living_Placeholder,limit=1,distance=..0.1] UUID1 run power remove @s origins-plus-plus:deathsworn/death_timer
execute if entity @s[tag=Living_Placeholder] at @s as @e[tag=Death_Timer_Start] if score @s Minion_Count = @e[tag=Living_Placeholder,limit=1,distance=..0.1] Minion_Count if score @s UUID0 = @e[tag=Living_Placeholder,limit=1,distance=..0.1] UUID0 if score @s UUID1 = @e[tag=Living_Placeholder,limit=1,distance=..0.1] UUID1 run say tag removed
execute if entity @s[tag=Living_Placeholder] at @s at @s as @e[tag=Death_Timer_Start] if score @s Minion_Count = @e[tag=Living_Placeholder,limit=1,distance=..0.1] Minion_Count if score @s UUID0 = @e[tag=Living_Placeholder,limit=1,distance=..0.1] UUID0 if score @s UUID1 = @e[tag=Living_Placeholder,limit=1,distance=..0.1] UUID1 run tag @s remove Death_Timer_Start
execute if entity @s[tag=Living_Placeholder] run kill