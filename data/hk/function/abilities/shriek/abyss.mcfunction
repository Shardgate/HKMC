scoreboard players operation @s hk.player.soul.num -= @s hk.player.soul.spell_req

execute as @s at @s run tp @s ~ ~ ~ ~ -90

execute anchored eyes positioned ^ ^ ^ run summon minecraft:marker ~ ~ ~ {Tags:["hk.spell.abyss_shriek.s"]}
execute anchored eyes positioned ^ ^ ^1 run summon minecraft:marker ~ ~ ~ {Tags:["hk.spell.abyss_shriek.s"]}
execute anchored eyes positioned ^ ^ ^2 run summon minecraft:marker ~ ~ ~ {Tags:["hk.spell.abyss_shriek.s"]}
execute anchored eyes positioned ^ ^ ^3 run summon minecraft:marker ~ ~ ~ {Tags:["hk.spell.abyss_shriek.s"]}

execute anchored eyes positioned ^ ^ ^1 positioned ^1 ^ ^ run summon minecraft:marker ~ ~ ~ {Tags:["hk.spell.abyss_shriek.s"]}
execute anchored eyes positioned ^ ^ ^1 positioned ^-1 ^ ^ run summon minecraft:marker ~ ~ ~ {Tags:["hk.spell.abyss_shriek.s"]}

execute anchored eyes positioned ^ ^ ^2 positioned ^1 ^ ^ run summon minecraft:marker ~ ~ ~ {Tags:["hk.spell.abyss_shriek.s"]}
execute anchored eyes positioned ^ ^ ^2 positioned ^-1 ^ ^ run summon minecraft:marker ~ ~ ~ {Tags:["hk.spell.abyss_shriek.s"]}

execute anchored eyes positioned ^ ^ ^3 positioned ^1 ^ ^ run summon minecraft:marker ~ ~ ~ {Tags:["hk.spell.abyss_shriek.s"]}
execute anchored eyes positioned ^ ^ ^3 positioned ^-1 ^ ^ run summon minecraft:marker ~ ~ ~ {Tags:["hk.spell.abyss_shriek.s"]}