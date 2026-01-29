execute if score @s hk.charms.nailmasters_glory.active matches 1.. if score @s hkna_sword_timer matches 25 run scoreboard players set @s hkna_sword_timer 48

#Reseting Scoreboards
tag @s remove hkna_has_sword
scoreboard players remove @s[tag=!hkna_charging,scores={hkna_sword_timer=2..49}] hkna_sword_timer 2
scoreboard players remove @s[tag=!hkna_charging,scores={hkna_sword_timer=1}] hkna_sword_timer 1
tag @s remove hkna_charging

#Detecting Sword Swings and Charging
execute if items entity @s weapon.mainhand *[custom_data~{hk:{type:"nail"}}] run tag @s add hkna_has_sword

tag @s[predicate=hk:sneaking,tag=hkna_has_sword] add hkna_charging
scoreboard players add @s[tag=hkna_charging,scores={hkna_sword_timer=..49}] hkna_sword_timer 1

#Nail Art Charged Particles
execute at @s[tag=hkna_charging,scores={hkna_sword_timer=1..49,hkna_particle=1}] run particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0.5 1 0.5 0.001 1 normal
execute at @s[scores={hkna_sword_timer=50,hkna_particle=1}] run particle minecraft:end_rod ~ ~1 ~ 0.5 1 0.5 0.001 1 normal

#Charging Sounds
execute at @s[tag=hkna_charging,scores={hkna_sword_timer=1..48}] run playsound minecraft:block.fire.ambient player @s ~ ~ ~
execute at @s[tag=hkna_charging,scores={hkna_sword_timer=49}] run playsound minecraft:block.ender_chest.open player @s ~ ~ ~

#Nail Arts
execute as @s[tag=hkna_has_sword] as @s[tag=hk.cyclone_slash, scores={hkna_sword_timer=50},predicate=!hk:sneaking,x_rotation=90] at @s run function hk:nail_arts/cyclone_slash
execute as @s[tag=hkna_has_sword] as @s[tag=hk.cyclone_slash,scores={hkna_sword_timer=50},predicate=!hk:sneaking,x_rotation=-90] at @s run function hk:nail_arts/cyclone_slash
execute as @s[tag=hkna_has_sword] as @s[tag=hk.great_slash,scores={hkna_sword_timer=50},predicate=!hk:sneaking,tag=!hk.sprinting] unless entity @s[x_rotation=90] unless entity @s[x_rotation=-90] at @s run function hk:nail_arts/great_slash

execute as @s[tag=hk.cyclone_slash, scores={hkna_sword_timer=50},predicate=!hk:sneaking,x_rotation=90] at @s run scoreboard players set @s hkna_sword_timer 0
execute as @s[tag=hk.cyclone_slash,scores={hkna_sword_timer=50},predicate=!hk:sneaking,x_rotation=-90] at @s run scoreboard players set @s hkna_sword_timer 0
execute as @s[tag=hk.great_slash,scores={hkna_sword_timer=50},predicate=!hk:sneaking,tag=!hk.sprinting] unless entity @s[x_rotation=90] unless entity @s[x_rotation=-90] at @s run scoreboard players set @s hkna_sword_timer 0

execute as @s[tag=!hk.cyclone_slash, scores={hkna_sword_timer=50},predicate=!hk:sneaking,x_rotation=90] at @s run scoreboard players set @s hkna_sword_timer 0
execute as @s[tag=!hk.cyclone_slash,scores={hkna_sword_timer=50},predicate=!hk:sneaking,x_rotation=-90] at @s run scoreboard players set @s hkna_sword_timer 0
execute as @s[tag=!hk.great_slash,scores={hkna_sword_timer=50},predicate=!hk:sneaking,tag=!hk.sprinting] unless entity @s[x_rotation=90] unless entity @s[x_rotation=-90] at @s run scoreboard players set @s hkna_sword_timer 0

tag @s[predicate=!hk:sprinting] remove hk.sprinting
tag @s[predicate=hk:sprinting] add hk.sprinting

scoreboard players add @s hkna_particle 1
scoreboard players set @s[scores={hkna_particle=3..}] hkna_particle 1

