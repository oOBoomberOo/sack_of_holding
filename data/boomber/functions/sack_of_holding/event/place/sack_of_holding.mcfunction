#define score_holder #hand

# Mainhand
execute if data entity @s SelectedItem.tag.ucit{id: "used_sack_of_holding", from: "boomber:sack_of_holding"} run scoreboard players operation #hand bb.sh.var = #hand.right bb.sh.enum
# Offhand
execute unless data entity @s SelectedItem.tag.ucit{id: "used_sack_of_holding", from: "boomber:sack_of_holding"} run scoreboard players operation #hand bb.sh.var = #hand.left bb.sh.enum

data merge storage boomber:sack_of_holding {data: {}}
execute if score #hand bb.sh.var = #hand.left bb.sh.enum run data modify storage boomber:sack_of_holding data set from entity @s Inventory[{Slot: -106b}].tag
execute if score #hand bb.sh.var = #hand.right bb.sh.enum run data modify storage boomber:sack_of_holding data set from entity @s SelectedItem.tag

scoreboard players set #raycast bb.sh.var 0
execute anchored eyes positioned ^ ^ ^0.1 anchored feet run function boomber:sack_of_holding/sack/raycast

advancement revoke @s from boomber:sack_of_holding/event/root