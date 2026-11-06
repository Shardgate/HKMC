team join hk.charms.passives

execute as @s at @s as @e[tag=hk.charms.weaverling,type=spider] if score @s hk.p.id = @p hk.p.id run return fail

execute at @s run summon spider ~ ~ ~ {Tags:["smithed.entity","hk.charms.weaverling"],PersistenceRequired:1b,DeathLootTable:"hk:mask_shard",Silent:1b}
execute at @s run summon spider ~ ~ ~ {Tags:["smithed.entity","hk.charms.weaverling"],PersistenceRequired:1b,DeathLootTable:"hk:mask_shard",Silent:1b}
execute at @s run summon spider ~ ~ ~ {Tags:["smithed.entity","hk.charms.weaverling"],PersistenceRequired:1b,DeathLootTable:"hk:mask_shard",Silent:1b}

execute at @s as @e[tag=hk.charms.weaverling,distance=..1,sort=nearest,limit=3] run scoreboard players operation @s hk.p.id = @p hk.p.id
execute at @s as @e[tag=hk.charms.weaverling,distance=..1,sort=nearest,limit=3] run attribute @s scale base set 0.4

