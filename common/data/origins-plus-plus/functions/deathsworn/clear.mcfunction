### clear items
execute if entity @s[type=item] store result score @a[sort=nearest,limit=1,distance=..0.1] Owner_UUID0_temp run data get entity @s Thrower[0]
execute if entity @s[type=item] store result score @a[sort=nearest,limit=1,distance=..0.1] Owner_UUID1_temp run data get entity @s Thrower[1]
execute if entity @s[type=item] store result score @a[sort=nearest,limit=1,distance=..0.1] Minion_Count_temp run data get entity @s Item.tag.Minion_Count
execute if entity @s[type=item] as @e[tag=Standby_Minion] if score @s Minion_Count = @a[sort=nearest,limit=1,distance=..0.1] Minion_Count_temp if score @s Owner_UUID0 = @a[sort=nearest,limit=1,distance=..0.1] Owner_UUID0 if score @s Owner_UUID1 = @a[sort=nearest,limit=1,distance=..0.1] Owner_UUID1 run say killed
execute if entity @s[type=item] as @e[tag=Standby_Minion] if score @s Minion_Count = @a[sort=nearest,limit=1,distance=..0.1] Minion_Count_temp if score @s Owner_UUID0 = @a[sort=nearest,limit=1,distance=..0.1] Owner_UUID0 if score @s Owner_UUID1 = @a[sort=nearest,limit=1,distance=..0.1] Owner_UUID1 run kill
execute if entity @s[type=item] run scoreboard players reset @a[sort=nearest,limit=1,distance=..0.1] Minion_Count_temp
execute if entity @s[type=item] run scoreboard players reset @a[sort=nearest,limit=1,distance=..0.1] Owner_UUID0_temp
execute if entity @s[type=item] run scoreboard players reset @a[sort=nearest,limit=1,distance=..0.1] Owner_UUID1_temp
execute if entity @s[type=item] run kill


### clear minions if no updates
execute if entity @s[tag=Living_Placeholder] at @s as @e[tag=Death_Timer_Start] if score @s Minion_Count = @e[tag=Living_Placeholder,limit=1,distance=..0.1] Minion_Count if score @s Owner_UUID0 = @e[tag=Living_Placeholder,limit=1,distance=..0.1] Owner_UUID0 if score @s Owner_UUID1 = @e[tag=Living_Placeholder,limit=1,distance=..0.1] Owner_UUID1 run power remove @s origins-plus-plus:deathsworn/death_timer_short
execute if entity @s[tag=Living_Placeholder] at @s as @e[tag=Death_Timer_Start] if score @s Minion_Count = @e[tag=Living_Placeholder,limit=1,distance=..0.1] Minion_Count if score @s Owner_UUID0 = @e[tag=Living_Placeholder,limit=1,distance=..0.1] Owner_UUID0 if score @s Owner_UUID1 = @e[tag=Living_Placeholder,limit=1,distance=..0.1] Owner_UUID1 run power remove @s origins-plus-plus:deathsworn/death_timer_long
execute if entity @s[tag=Living_Placeholder] at @s as @e[tag=Death_Timer_Start] if score @s Minion_Count = @e[tag=Living_Placeholder,limit=1,distance=..0.1] Minion_Count if score @s Owner_UUID0 = @e[tag=Living_Placeholder,limit=1,distance=..0.1] Owner_UUID0 if score @s Owner_UUID1 = @e[tag=Living_Placeholder,limit=1,distance=..0.1] Owner_UUID1 run say tag removed
execute if entity @s[tag=Living_Placeholder] at @s at @s as @e[tag=Death_Timer_Start] if score @s Minion_Count = @e[tag=Living_Placeholder,limit=1,distance=..0.1] Minion_Count if score @s Owner_UUID0 = @e[tag=Living_Placeholder,limit=1,distance=..0.1] Owner_UUID0 if score @s Owner_UUID1 = @e[tag=Living_Placeholder,limit=1,distance=..0.1] Owner_UUID1 run tag @s remove Death_Timer_Start
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

execute if entity @s[tag=Standby_Minion] run data remove entity @s Tags[0]