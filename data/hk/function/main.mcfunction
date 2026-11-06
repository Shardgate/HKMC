gamerule keep_inventory true

execute as @a run function hk:tick/player
execute as @e[type=item] run function hk:tick/item
execute as @e[type=item_display] run function hk:tick/item_display

function hk:tick/armor_stand
execute as @e[type=bee,tag=hk.charms.grimmchild.bee] run function hk:tick/bee

execute as @e[type=marker] run function hk:tick/marker2
