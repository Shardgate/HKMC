# summon a new item entity
summon item ~ ~ ~ {Item:{id:"minecraft:stone",count:1},Tags:["hk.inv.new_item"]}
# copy the info about the entity from the marker entity
data modify entity @e[type=item,tag=hk.inv.new_item,limit=1] Item set from entity @s data.Inventory[0]
# remove the item from the marker
data remove entity @s data.Inventory[0]
# remove 1 from the amount of items that we still need to process
scoreboard players remove #items hk.inv.temp 1
# remove item tag
tag @e[type=item,tag=hk.inv.new_item] remove hk.inv.new_item
# run the same function again if there are more items to process
execute if score #items hk.inv.temp matches 1.. run function hk:shade/return