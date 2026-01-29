scoreboard players remove @s hk.bench.raycast 1

execute if block ~ ~ ~ soul_campfire run execute align xyz positioned ~0.5 ~-0.1575 ~0.5 run summon minecraft:item_display ~ ~ ~ {Tags:["hk.bench.camp_off"], item_display:"head", item:{id:"minecraft:poisonous_potato",components:{item_model:"hk:camp"}}}
execute if block ~ ~ ~ soul_campfire[facing=north] run execute align xyz positioned ~0.5 ~-0.1575 ~0.5 run rotate @n[tag=hk.bench.camp_off,distance=..1] 180 0
execute if block ~ ~ ~ soul_campfire[facing=east] run execute align xyz positioned ~0.5 ~-0.1575 ~0.5 run rotate @n[tag=hk.bench.camp_off,distance=..1] 270 0
execute if block ~ ~ ~ soul_campfire[facing=south] run execute align xyz positioned ~0.5 ~-0.1575 ~0.5 run rotate @n[tag=hk.bench.camp_off,distance=..1] 0 0
execute if block ~ ~ ~ soul_campfire[facing=west] run execute align xyz positioned ~0.5 ~-0.1575 ~0.5 run rotate @n[tag=hk.bench.camp_off,distance=..1] 90 0
# execute if block ~ ~ ~ #minecraft:replaceable if score @s hk.bench.raycast matches 1.. positioned ^ ^ ^0.1 run function hk:bench/raycast/raycast