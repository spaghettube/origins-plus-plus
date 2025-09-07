### clear items
execute if entity @s[type=item] store result score @a[sort=nearest,limit=1] UUID0_temp run data get entity @s Thrower[0]
execute if entity @s[type=item] store result score @a[sort=nearest,limit=1] UUID1_temp run data get entity @s Thrower[1]
execute if entity @s[type=item] store result score @a[sort=nearest,limit=1] Minion_Count_temp run data get entity @s Item.tag.Minion_Count
execute if entity @s[type=item] as @e[tag=Standby_Minion] if score @s Minion_Count = @a[sort=nearest,limit=1] Minion_Count_temp if score @s UUID0 = @a[sort=nearest,limit=1] UUID0 if score @s UUID1 = @a[sort=nearest,limit=1] UUID1 run say killed
execute if entity @s[type=item] as @e[tag=Standby_Minion] if score @s Minion_Count = @a[sort=nearest,limit=1] Minion_Count_temp if score @s UUID0 = @a[sort=nearest,limit=1] UUID0 if score @s UUID1 = @a[sort=nearest,limit=1] UUID1 run kill
execute if entity @s[type=item] run scoreboard players reset @a[sort=nearest,limit=1] Minion_Count_temp
execute if entity @s[type=item] run scoreboard players reset @a[sort=nearest,limit=1] UUID0_temp
execute if entity @s[type=item] run scoreboard players reset @a[sort=nearest,limit=1] UUID1_temp
execute if entity @s[type=item] run kill


### clear minions if no updates
execute if entity @s[tag=Living_Placeholder] at @s as @e[tag=Death_Timer_Start] if score @s Minion_Count = @e[tag=Living_Placeholder,limit=1,distance=..0.1] Minion_Count if score @s UUID0 = @e[tag=Living_Placeholder,limit=1,distance=..0.1] UUID0 if score @s UUID1 = @e[tag=Living_Placeholder,limit=1,distance=..0.1] UUID1 run power remove @s origins-plus-plus:deathsworn/death_timer_short
execute if entity @s[tag=Living_Placeholder] at @s as @e[tag=Death_Timer_Start] if score @s Minion_Count = @e[tag=Living_Placeholder,limit=1,distance=..0.1] Minion_Count if score @s UUID0 = @e[tag=Living_Placeholder,limit=1,distance=..0.1] UUID0 if score @s UUID1 = @e[tag=Living_Placeholder,limit=1,distance=..0.1] UUID1 run power remove @s origins-plus-plus:deathsworn/death_timer_long
execute if entity @s[tag=Living_Placeholder] at @s as @e[tag=Death_Timer_Start] if score @s Minion_Count = @e[tag=Living_Placeholder,limit=1,distance=..0.1] Minion_Count if score @s UUID0 = @e[tag=Living_Placeholder,limit=1,distance=..0.1] UUID0 if score @s UUID1 = @e[tag=Living_Placeholder,limit=1,distance=..0.1] UUID1 run say tag removed
execute if entity @s[tag=Living_Placeholder] at @s at @s as @e[tag=Death_Timer_Start] if score @s Minion_Count = @e[tag=Living_Placeholder,limit=1,distance=..0.1] Minion_Count if score @s UUID0 = @e[tag=Living_Placeholder,limit=1,distance=..0.1] UUID0 if score @s UUID1 = @e[tag=Living_Placeholder,limit=1,distance=..0.1] UUID1 run tag @s remove Death_Timer_Start
execute if entity @s[tag=Living_Placeholder] run kill

### clear minions if heart detected outside inventory
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[0].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[0]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[1].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[1]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[2].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[2]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[3].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[3]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[4].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[4]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[5].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[5]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[6].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[6]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[7].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[7]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[8].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[8]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[9].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[9]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[10].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[10]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[11].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[11]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[12].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[12]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[13].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[13]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[14].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[14]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[15].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[15]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[16].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[16]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[17].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[17]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[18].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[18]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[19].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[19]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[20].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[20]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[21].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[21]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[22].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[22]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[23].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[23]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[24].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[24]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[25].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[25]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[26].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[26]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[27].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[27]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[28].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[28]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[29].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[29]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[30].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[30]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[31].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[31]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[32].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[32]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[33].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[33]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[34].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[34]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[35].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[35]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[36].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[36]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[37].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[37]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[38].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[38]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[39].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[39]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[40].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[40]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[41].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[41]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[42].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[42]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[43].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[43]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[44].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[44]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[45].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[45]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[46].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[46]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[47].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[47]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[48].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[48]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[49].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[49]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[50].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[50]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[51].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[51]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[52].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[52]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[53].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[53]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[54].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[54]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[55].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[55]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[56].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[56]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[57].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[57]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[58].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[58]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[59].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[59]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[60].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[60]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[61].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[61]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[62].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[62]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[63].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[63]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[64].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[64]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[65].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[65]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[66].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[66]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[67].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[67]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[68].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[68]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[69].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[69]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[70].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[70]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[71].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[71]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[72].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[72]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[73].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[73]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[74].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[74]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[75].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[75]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[76].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[76]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[77].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[77]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[78].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[78]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[79].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[79]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[80].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[80]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[81].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[81]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[82].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[82]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[83].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[83]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[84].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[84]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[85].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[85]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[86].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[86]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[87].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[87]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[88].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[88]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[89].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[89]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[90].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[90]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[91].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[91]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[92].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[92]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[93].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[93]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[94].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[94]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[95].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[95]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[96].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[96]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[97].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[97]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[98].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[98]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[99].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[99]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[100].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[100]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[101].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[101]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[102].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[102]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[103].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[103]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[104].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[104]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[105].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[105]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[106].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[106]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[107].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[107]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[107].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[107]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[108].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[108]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[109].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[109]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[110].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[110]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[111].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[111]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[112].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[112]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[113].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[113]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[114].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[114]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[115].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[115]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[116].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[116]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[117].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[117]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[118].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[118]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[119].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[119]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[120].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[120]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[121].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[121]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[122].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[122]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[123].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[123]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[124].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[124]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[125].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[125]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[126].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[126]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[127].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[127]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[128].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[128]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[129].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[129]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[130].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[130]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[131].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[131]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[132].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[132]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[133].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[133]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[134].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[134]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[135].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run data remove block ~ ~ ~ Items[135]
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill

execute if entity @s[tag=Standby_Minion] run scoreboard players reset @s Minion_Count_temp

tag @s remove 000
tag @s remove 001
tag @s remove 100
tag @s remove 00-1
tag @s remove -100
tag @s remove 002
tag @s remove 200
tag @s remove 00-2
tag @s remove -200
tag @s remove 003
tag @s remove 300
tag @s remove 00-3
tag @s remove -300
tag @s remove 03-3
tag @s remove 03-3
tag @s remove 03-3
tag @s remove 03-30
tag @s remove 03-31
tag @s remove 03-32
tag @s remove 03-33
tag @s remove 03-2
tag @s remove 03-2
tag @s remove 03-2
tag @s remove 03-20
tag @s remove 03-21
tag @s remove 03-22
tag @s remove 03-23
tag @s remove 03-1
tag @s remove 03-1
tag @s remove 03-1
tag @s remove 03-10
tag @s remove 03-11
tag @s remove 03-12
tag @s remove 03-13
tag @s remove 030-3
tag @s remove 030-2
tag @s remove 030-1
tag @s remove 0-300
tag @s remove 0-301
tag @s remove 0-302
tag @s remove 0-303
tag @s remove 031-3
tag @s remove 031-2
tag @s remove 031-1
tag @s remove 0-310
tag @s remove 0-311
tag @s remove 0-312
tag @s remove 0-313
tag @s remove 032-3
tag @s remove 032-2
tag @s remove 032-1
tag @s remove 0-320
tag @s remove 0-321
tag @s remove 0-322
tag @s remove 0-323
tag @s remove 033-3
tag @s remove 033-2
tag @s remove 033-1
tag @s remove 0-330
tag @s remove 0-331
tag @s remove 0-332
tag @s remove 0-333
tag @s remove 02-3
tag @s remove 02-3
tag @s remove 02-3
tag @s remove 02-30
tag @s remove 02-31
tag @s remove 02-32
tag @s remove 02-33
tag @s remove 02-2
tag @s remove 02-2
tag @s remove 02-2
tag @s remove 02-20
tag @s remove 02-21
tag @s remove 02-22
tag @s remove 02-23
tag @s remove 02-1
tag @s remove 02-1
tag @s remove 02-1
tag @s remove 02-10
tag @s remove 02-11
tag @s remove 02-12
tag @s remove 02-13
tag @s remove 020-3
tag @s remove 020-2
tag @s remove 020-1
tag @s remove 0-200
tag @s remove 0-201
tag @s remove 0-202
tag @s remove 0-203
tag @s remove 021-3
tag @s remove 021-2
tag @s remove 021-1
tag @s remove 0-210
tag @s remove 0-211
tag @s remove 0-212
tag @s remove 0-213
tag @s remove 022-3
tag @s remove 022-2
tag @s remove 022-1
tag @s remove 0-220
tag @s remove 0-221
tag @s remove 0-222
tag @s remove 0-223
tag @s remove 023-3
tag @s remove 023-2
tag @s remove 023-1
tag @s remove 0-230
tag @s remove 0-231
tag @s remove 0-232
tag @s remove 0-233
tag @s remove 01-3
tag @s remove 01-3
tag @s remove 01-3
tag @s remove 01-30
tag @s remove 01-31
tag @s remove 01-32
tag @s remove 01-33
tag @s remove 01-2
tag @s remove 01-2
tag @s remove 01-2
tag @s remove 01-20
tag @s remove 01-21
tag @s remove 01-22
tag @s remove 01-23
tag @s remove 01-1
tag @s remove 01-1
tag @s remove 01-1
tag @s remove 01-10
tag @s remove 01-11
tag @s remove 01-12
tag @s remove 01-13
tag @s remove 010-3
tag @s remove 010-2
tag @s remove 010-1
tag @s remove 0-100
tag @s remove 0-101
tag @s remove 0-102
tag @s remove 0-103
tag @s remove 011-3
tag @s remove 011-2
tag @s remove 011-1
tag @s remove 0-110
tag @s remove 0-111
tag @s remove 0-112
tag @s remove 0-113
tag @s remove 012-3
tag @s remove 012-2
tag @s remove 012-1
tag @s remove 0-120
tag @s remove 0-121
tag @s remove 0-122
tag @s remove 0-123
tag @s remove 013-3
tag @s remove 013-2
tag @s remove 013-1
tag @s remove 0-130
tag @s remove 0-131
tag @s remove 0-132
tag @s remove 0-133
tag @s remove 03-3
tag @s remove 03-2
tag @s remove 03-1
tag @s remove 0-30
tag @s remove 0-31
tag @s remove 0-32
tag @s remove 0-33
tag @s remove 02-3
tag @s remove 02-2
tag @s remove 02-1
tag @s remove 0-20
tag @s remove 0-21
tag @s remove 0-22
tag @s remove 0-23
tag @s remove 01-3
tag @s remove 01-2
tag @s remove 01-1
tag @s remove 0-10
tag @s remove 0-11
tag @s remove 0-12
tag @s remove 0-13
tag @s remove 00-3
tag @s remove 00-2
tag @s remove 00-1
tag @s remove 001
tag @s remove 002
tag @s remove 003
tag @s remove 01-3
tag @s remove 01-2
tag @s remove 01-1
tag @s remove 010
tag @s remove 011
tag @s remove 012
tag @s remove 013
tag @s remove 02-3
tag @s remove 02-2
tag @s remove 02-1
tag @s remove 020
tag @s remove 021
tag @s remove 022
tag @s remove 023
tag @s remove 03-3
tag @s remove 03-2
tag @s remove 03-1
tag @s remove 030
tag @s remove 031
tag @s remove 032
tag @s remove 033
tag @s remove 13-3
tag @s remove 13-2
tag @s remove 13-1
tag @s remove 1-30
tag @s remove 1-31
tag @s remove 1-32
tag @s remove 1-33
tag @s remove 12-3
tag @s remove 12-2
tag @s remove 12-1
tag @s remove 1-20
tag @s remove 1-21
tag @s remove 1-22
tag @s remove 1-23
tag @s remove 11-3
tag @s remove 11-2
tag @s remove 11-1
tag @s remove 1-10
tag @s remove 1-11
tag @s remove 1-12
tag @s remove 1-13
tag @s remove 10-3
tag @s remove 10-2
tag @s remove 10-1
tag @s remove 100
tag @s remove 101
tag @s remove 102
tag @s remove 103
tag @s remove 11-3
tag @s remove 11-2
tag @s remove 11-1
tag @s remove 110
tag @s remove 111
tag @s remove 112
tag @s remove 113
tag @s remove 12-3
tag @s remove 12-2
tag @s remove 12-1
tag @s remove 120
tag @s remove 121
tag @s remove 122
tag @s remove 123
tag @s remove 13-3
tag @s remove 13-2
tag @s remove 13-1
tag @s remove 130
tag @s remove 131
tag @s remove 132
tag @s remove 133
tag @s remove 23-3
tag @s remove 23-2
tag @s remove 23-1
tag @s remove 2-30
tag @s remove 2-31
tag @s remove 2-32
tag @s remove 2-33
tag @s remove 22-3
tag @s remove 22-2
tag @s remove 22-1
tag @s remove 2-20
tag @s remove 2-21
tag @s remove 2-22
tag @s remove 2-23
tag @s remove 21-3
tag @s remove 21-2
tag @s remove 21-1
tag @s remove 2-10
tag @s remove 2-11
tag @s remove 2-12
tag @s remove 2-13
tag @s remove 20-3
tag @s remove 20-2
tag @s remove 20-1
tag @s remove 200
tag @s remove 201
tag @s remove 202
tag @s remove 203
tag @s remove 21-3
tag @s remove 21-2
tag @s remove 21-1
tag @s remove 210
tag @s remove 211
tag @s remove 212
tag @s remove 213
tag @s remove 22-3
tag @s remove 22-2
tag @s remove 22-1
tag @s remove 220
tag @s remove 221
tag @s remove 222
tag @s remove 223
tag @s remove 23-3
tag @s remove 23-2
tag @s remove 23-1
tag @s remove 230
tag @s remove 231
tag @s remove 232
tag @s remove 233
tag @s remove 33-3
tag @s remove 33-2
tag @s remove 33-1
tag @s remove 3-30
tag @s remove 3-31
tag @s remove 3-32
tag @s remove 3-33
tag @s remove 32-3
tag @s remove 32-2
tag @s remove 32-1
tag @s remove 3-20
tag @s remove 3-21
tag @s remove 3-22
tag @s remove 3-23
tag @s remove 31-3
tag @s remove 31-2
tag @s remove 31-1
tag @s remove 3-10
tag @s remove 3-11
tag @s remove 3-12
tag @s remove 3-13
tag @s remove 30-3
tag @s remove 30-2
tag @s remove 30-1
tag @s remove 300
tag @s remove 301
tag @s remove 302
tag @s remove 303
tag @s remove 31-3
tag @s remove 31-2
tag @s remove 31-1
tag @s remove 310
tag @s remove 311
tag @s remove 312
tag @s remove 313
tag @s remove 32-3
tag @s remove 32-2
tag @s remove 32-1
tag @s remove 320
tag @s remove 321
tag @s remove 322
tag @s remove 323
tag @s remove 33-3
tag @s remove 33-2
tag @s remove 33-1
tag @s remove 330
tag @s remove 331
tag @s remove 332
tag @s remove 333