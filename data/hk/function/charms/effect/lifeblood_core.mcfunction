execute as @s[nbt={SleepTimer:100s}] if score @s hk.charms.lifeblood_heart.active matches 1.. unless score @s hk.charms.lifeblood_core.active matches 1.. run effect clear @s absorption
execute as @s[nbt={SleepTimer:100s}] if score @s hk.charms.lifeblood_heart.active matches 1.. unless score @s hk.charms.lifeblood_core.active matches 1.. run effect give @s minecraft:absorption infinite 1 true
execute if score @s hk.charms.deathcount matches 2.. if score @s hk.charms.lifeblood_heart.active matches 1.. unless score @s hk.charms.lifeblood_core.active matches 1.. run effect give @s minecraft:absorption infinite 1 true
execute if score @s hk.charms.deathcount matches 1.. if score @s hk.charms.lifeblood_heart.active matches 1.. unless score @s hk.charms.lifeblood_core.active matches 1.. run scoreboard players set @s hk.charms.deathcount 0

execute as @s[nbt={SleepTimer:100s}] unless score @s hk.charms.lifeblood_heart.active matches 1.. if score @s hk.charms.lifeblood_core.active matches 1.. run effect clear @s absorption
execute as @s[nbt={SleepTimer:100s}] unless score @s hk.charms.lifeblood_heart.active matches 1.. if score @s hk.charms.lifeblood_core.active matches 1.. run effect give @s minecraft:absorption infinite 3 true
execute if score @s hk.charms.deathcount matches 2.. unless score @s hk.charms.lifeblood_heart.active matches 1.. if score @s hk.charms.lifeblood_core.active matches 1.. run effect give @s minecraft:absorption infinite 1 true
execute if score @s hk.charms.deathcount matches 1.. unless score @s hk.charms.lifeblood_heart.active matches 1.. if score @s hk.charms.lifeblood_core.active matches 1.. run scoreboard players set @s hk.charms.deathcount 0

execute as @s[nbt={SleepTimer:100s}] if score @s hk.charms.lifeblood_heart.active matches 1.. if score @s hk.charms.lifeblood_core.active matches 1.. run effect clear @s absorption
execute as @s[nbt={SleepTimer:100s}] if score @s hk.charms.lifeblood_heart.active matches 1.. if score @s hk.charms.lifeblood_core.active matches 1.. run effect give @s minecraft:absorption infinite 5 true
execute if score @s hk.charms.deathcount matches 2.. if score @s hk.charms.lifeblood_heart.active matches 1.. if score @s hk.charms.lifeblood_core.active matches 1.. run effect give @s minecraft:absorption infinite 1 true
execute if score @s hk.charms.deathcount matches 1.. if score @s hk.charms.lifeblood_heart.active matches 1.. if score @s hk.charms.lifeblood_core.active matches 1.. run scoreboard players set @s hk.charms.deathcount 0