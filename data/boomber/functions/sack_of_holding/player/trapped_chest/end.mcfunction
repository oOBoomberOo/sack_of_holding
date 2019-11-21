loot spawn ~ ~ ~ loot boomber:sack_of_holding/item/used_sack_of_holding
execute as @e[type=item, nbt={Item: {tag: {ucit: {id: "used_sack_of_holding", from: "boomber:sack_of_holding"}}}}, limit=1, sort=nearest, distance=..0.5] run function boomber:sack_of_holding/sack/encode

replaceitem entity @s weapon.mainhand minecraft:air
execute if block ~ ~ ~ minecraft:trapped_chest[waterlogged=false] run setblock ~ ~ ~ minecraft:air
execute if block ~ ~ ~ minecraft:trapped_chest[waterlogged=true] run setblock ~ ~ ~ minecraft:water
scoreboard players set #bb.sh.raycast bb.success 1