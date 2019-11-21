scoreboard players set #bb.sh.raycast bb.success 0
execute anchored eyes positioned ^ ^ ^0.1 anchored feet run function boomber:sack_of_holding/sack/raycast

playsound minecraft:item.armor.equip_leather block @a ~ ~ ~

execute unless data entity @s SelectedItem.tag.ucit{id: "used_sack_of_holding", from: "boomber:sack_of_holding"} run loot replace entity @s weapon.offhand loot boomber:sack_of_holding/item/empty_sack_of_holding
execute if data entity @s SelectedItem.tag.ucit{id: "used_sack_of_holding", from: "boomber:sack_of_holding"} run loot replace entity @s weapon.mainhand loot boomber:sack_of_holding/item/empty_sack_of_holding
advancement revoke @s from boomber:sack_of_holding/event/root