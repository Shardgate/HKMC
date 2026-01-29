tag @s add hkna_great_slash
playsound entity.player.attack.sweep player @a ~ ~ ~
execute run summon area_effect_cloud ^ ^ ^2.5 {Radius:0f,Duration:1,Tags:["hkna_slash1.1"]}
execute run summon area_effect_cloud ^ ^ ^4.5 {Radius:0f,Duration:1,Tags:["hkna_slash2.1"]}

execute at @e[type=area_effect_cloud,tag=hkna_slash1.1] run execute as @e[type=#hk:hostile,tag=!hkna_great_slash,distance=..1] run damage @s 8 minecraft:player_attack
execute at @e[type=area_effect_cloud,tag=hkna_slash2.1] run execute as @e[type=#hk:hostile,tag=!hkna_great_slash,distance=..1] run damage @s 8 minecraft:player_attack
tag @s remove hkna_great_slash

scoreboard players set @s hkna_sword_timer 0

