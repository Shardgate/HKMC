tag @s add hkna_great_slash
execute anchored eyes run particle sweep_attack ^ ^ ^1
playsound entity.player.attack.sweep player @a ~ ~ ~
execute run summon area_effect_cloud ^ ^ ^1 {Radius:0f,Duration:1,Tags:["smithed.entity","smithed.strict","hkna_slash1"]}
execute run summon area_effect_cloud ^ ^ ^2.5 {Radius:0f,Duration:1,Tags:["smithed.entity","smithed.strict","hkna_slash2"]}
execute at @e[type=area_effect_cloud,tag=hkna_slash1,limit=1,sort=nearest] run execute as @e[type=#hk:hostile,tag=!hkna_great_slash,distance=..0.5, tag=!smithed.entity] run damage @s 8 minecraft:player_attack
execute at @e[type=area_effect_cloud,tag=hkna_slash2,limit=1,sort=nearest] run execute as @e[type=#hk:hostile,tag=!hkna_great_slash,distance=..1, tag=!smithed.entity] run damage @s 8 minecraft:player_attack
tag @s remove hkna_great_slash

scoreboard players set @s hkna_sword_timer 0