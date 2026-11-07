playsound entity.blaze.hurt player @a ~ ~ ~
summon area_effect_cloud ~ ~1.2 ~ {WaitTime:0,custom_particle:{type:crit},Radius:3f,Duration:2,Tags:["smithed.entity","hkna_cyclone"]}
execute store result score @s hkna_cyc_dist run data get entity @s Pos[1] 10
execute anchored eyes as @e[type=#hk:hostile,distance=..3, tag=!smithed.entity] store result score @s hkna_cyc_dist run data get entity @s Pos[1] 10
execute anchored eyes run scoreboard players operation @e[type=#hk:hostile,distance=0.3..3, tag=!smithed.entity] hkna_cyc_dist -= @s hkna_cyc_dist
execute anchored eyes run effect give @e[type=#hk:hostile,distance=0.3..3,scores={hkna_cyc_dist=-15..15}, tag=!smithed.entity] wither 4 4 true

scoreboard players set @s hkna_sword_timer 0