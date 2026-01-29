summon item ~ ~ ~ {Item:{id:"minecraft:stone",count:1},Tags:["hk.inv2.new_item"]}
data modify entity @e[type=item,tag=hk.inv2.new_item,limit=1] Item set from entity @s SelectedItem
item replace entity @s weapon.mainhand with air
tag @e[type=item,tag=hk.inv2.new_item] remove hk.inv2.new_item
loot give @s loot hk:ability_wheel