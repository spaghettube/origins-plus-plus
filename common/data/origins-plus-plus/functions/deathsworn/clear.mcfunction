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
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[0].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[0].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[0].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[0] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[1].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[1].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[1].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[1] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[2].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[2].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[2].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[2] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[3].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[3].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[3].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[3] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[4].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[4].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[4].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[4] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[5].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[5].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[5].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[5] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[6].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[6].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[6].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[6] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[7].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[7].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[7].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[7] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[8].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[8].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[8].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[8] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[9].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[9].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[9].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[9] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[10].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[10].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[10].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[10] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[11].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[11].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[11].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[11] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[12].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[12].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[12].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[12] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[13].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[13].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[13].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[13] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[14].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[14].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[14].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[14] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[15].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[15].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[15].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[15] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[16].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[16].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[16].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[16] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[17].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[17].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[17].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[17] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[18].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[18].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[18].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[18] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[19].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[19].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[19].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[19] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[20].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[20].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[20].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[20] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[21].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[21].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[21].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[21] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[22].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[22].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[22].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[22] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[23].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[23].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[23].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[23] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[24].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[24].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[24].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[24] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[25].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[25].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[25].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[25] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[26].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[26].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[26].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[26] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[27].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[27].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[27].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[27] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[28].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[28].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[28].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[28] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[29].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[29].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[29].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[29] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[30].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[30].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[30].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[30] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[31].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[31].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[31].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[31] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[32].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[32].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[32].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[32] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[33].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[33].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[33].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[33] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[34].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[34].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[34].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[34] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[35].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[35].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[35].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[35] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[36].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[36].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[36].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[36] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[37].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[37].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[37].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[37] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[38].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[38].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[38].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[38] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[39].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[39].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[39].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[39] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[40].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[40].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[40].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[40] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[41].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[41].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[41].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[41] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[42].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[42].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[42].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[42] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[43].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[43].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[43].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[43] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[44].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[44].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[44].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[44] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[45].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[45].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[45].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[45] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[46].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[46].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[46].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[46] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[47].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[47].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[47].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[47] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[48].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[48].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[48].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[48] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[49].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[49].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[49].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[49] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[50].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[50].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[50].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[50] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[51].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[51].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[51].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[51] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[52].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[52].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[52].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[52] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[53].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[53].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[53].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[53] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[54].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[54].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[54].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[54] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[55].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[55].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[55].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[55] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[56].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[55].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[56].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[55] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[57].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[57].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[57].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[57] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[58].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[58].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[58].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[58] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[59].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[59].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[59].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[59] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[60].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[60].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[60].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[60] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[60].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[61].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[60].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[61] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[62].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[62].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[62].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[62] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[63].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[63].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[63].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[63] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[64].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[64].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[64].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[64] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[65].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[65].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[65].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[65] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[66].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[66].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[66].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[66] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[67].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[67].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[67].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[67] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[68].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[68].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[68].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[68] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[69].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[69].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[69].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[69] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[70].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[70].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[70].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[70] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[71].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[71].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[71].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[71] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[72].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[72].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[72].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[72] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[73].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[73].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[73].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[73] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[74].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[74].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[74].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[74] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[75].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[75].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[75].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[75] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[76].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[76].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[76].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[76] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[77].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[77].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[77].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[77] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[78].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[78].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[78].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[78] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[79].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[79].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[79].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[79] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[80].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[80].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[80].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[80] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[81].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[81].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[81].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[81] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[82].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[82].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[82].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[82] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[83].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[83].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[83].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[83] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[84].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[84].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[84].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[84] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[85].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[85].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[85].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[85] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[86].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[86].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[86].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[86] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[87].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[87].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[87].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[87] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[88].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[87].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[88].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[87] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[89].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[89].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[89].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[89] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[90].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[90].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[90].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[90] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[91].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[91].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[91].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[91] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[92].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[92].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[92].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[92] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[93].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[91].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[93].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[93] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[94].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[94].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[94].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[94] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[95].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[95].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[95].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[95] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[96].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[96].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[96].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[96] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[97].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[97].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[97].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[97] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[98].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[98].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[98].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[98] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[99].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[99].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[99].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[99] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[100].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[100].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[100].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[100] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[101].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[101].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[101].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[101] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[102].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[102].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[102].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[102] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[103].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[103].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[103].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[103] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[104].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[104].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[104].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[104] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[105].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[105].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[105].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[105] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[106].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[106].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[106].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[106] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[107].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[107].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[107].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[107] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[108].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[108].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[108].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[108] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[109].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[109].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[109].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[109] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[110].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[110].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[110].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[110] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[111].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[111].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[111].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[111] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[112].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[112].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[112].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[112] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[113].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[113].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[113].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[113] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[114].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[114].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[114].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[114] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[115].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[115].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[115].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[115] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[116].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[116].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[116].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[116] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[117].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[117].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[117].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[117] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[118].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[118].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[118].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[118] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[119].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[119].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[119].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[119] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[120].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[120].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[120].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[120] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[121].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[121].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[121].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[121] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[122].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[122].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[122].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[122] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[123].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[123].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[123].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[123] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[124].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[124].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[124].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[124] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[125].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[125].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[125].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[125] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[126].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[126].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[126].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[126] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[127].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[127].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[127].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[127] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[128].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[128].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[128].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[128] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[129].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[129].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[129].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[129] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[130].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[130].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[130].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[130] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[131].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[131].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[131].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[131] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[132].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[132].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[132].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[132] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[133].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[133].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[133].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[133] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[134].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[134].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[134].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[134] set value {}
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[135].tag.Minion_Count store result score @s Minion_Count_temp run data get block ~ ~ ~ Items[135].tag.Minion_Count
execute if entity @s[tag=Standby_Minion] if data block ~ ~ ~ Items[135].tag.Minion_Count if score @s Minion_Count = @s Minion_Count_temp run data modify block ~ ~ ~ Items[135] set value {}

execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run say killed minion
execute if entity @s[tag=Standby_Minion] if score @s Minion_Count = @s Minion_Count_temp run kill
execute if entity @s[tag=Standby_Minion] run scoreboard players reset @s Minion_Count_temp