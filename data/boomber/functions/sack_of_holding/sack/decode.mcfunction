execute if block ~ ~ ~ minecraft:chest run data modify block ~ ~ ~ CustomName set value '{"translate": "block.minecraft.chest"}'
execute if block ~ ~ ~ minecraft:trapped_chest run data modify block ~ ~ ~ CustomName set value '{"translate": "block.minecraft.trapped_chest"}'
execute if block ~ ~ ~ minecraft:barrel run data modify block ~ ~ ~ CustomName set value '{"translate": "block.minecraft.barrel"}'
execute if data entity @s SelectedItem.tag.ucit.sack_of_holding.custom_name run data modify block ~ ~ ~ CustomName set from entity @s SelectedItem.tag.ucit.sack_of_holding.custom_name
execute unless data entity @s SelectedItem.tag.ucit.sack_of_holding.custom_name run data modify block ~ ~ ~ CustomName set from entity @s Inventory[{Slot: -106b}].tag.ucit.sack_of_holding.custom_name

scoreboard players set #bb.sh.raycast bb.success 1