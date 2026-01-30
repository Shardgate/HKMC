execute unless score @p hk.charms.grimmchild.active matches 1.. on passengers run kill @s
execute unless score @p hk.charms.grimmchild.active matches 1.. run kill @s

tag @p add hk.charms.child_active
team join hk.charms.passives @p

data remove entity @s hive_pos
data remove entity @s angry_at
data modify entity @s anger_end_time set value 0
data modify entity @s InLove set value 0
data remove entity @s LoveCause
data modify entity @s TicksSincePollination set value 0
data modify entity @s CannotEnterHiveTicks set value 100
data modify entity @s HasNectar set value 0b
data modify entity @s CropsGrownSincePollination set value 0

execute as @s[type=bee,tag=hk.charms.grimmchild.bee] run rotate @s facing entity @p eyes
execute as @s[type=bee,tag=hk.charms.grimmchild.bee,distance=2..] at @s run tp @s ^ ^ ^0.2

execute as @s[type=bee,tag=hk.charms.grimmchild.bee,distance=4..] at @p run tp @s ~ ~1 ~
