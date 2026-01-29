# count the amount of items in the array so we know how often to repeat
execute store result score #items hk.inv.temp run data get entity @s data.Inventory

# if there is at least one item, start the process.
execute if score #items hk.inv.temp matches 1.. run function hk:shade/return

# remove entity, it served its purpose. If you want to keep it around
# you should first copy the data and work on the copy instead.
kill @s