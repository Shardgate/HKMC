execute if score @s hk.charms.spore_shroom.cool matches 1.. at @s run function hk:tick/spore_cloud
execute if score @s hk.charms.spore_shroom.cool matches 0 run kill @s

execute as @s[type=marker,tag=hk.spell.abyss_shriek.s] at @s if entity @n[tag=!hk.spell.abyss_shriek.s,distance=..1.1] run effect give @n[tag=!hk.spell.abyss_shriek.s,distance=..1.1] wither 4 4 true 
execute as @s[type=marker,tag=hk.spell.abyss_shriek.s] at @s run kill @s

execute as @s[type=marker,tag=hk.spell.howling_wraiths.s] at @s if entity @n[tag=!hk.spell.howling_wraiths.s,distance=..1.1] run damage @n[tag=!hk.spell.howling_wraiths.s,distance=..1.1] 6 magic
execute as @s[type=marker,tag=hk.spell.howling_wraiths.s] at @s run kill @s