setblock ~ ~ ~ minecraft:shulker_box
	loot insert ~ ~ ~ loot boomber:sack_of_holding/item/empty_sack_of_holding
	data modify block ~ ~ ~ Items[0].tag.durability set from storage boomber:sack_of_holding data.durability

	execute if score #hand bb.sh.var = #hand.right bb.sh.enum run loot replace entity @s weapon.mainhand 1 mine ~ ~ ~ minecraft:iron_pickaxe{ucit: {id: 'inventory_modifier'}}
	execute if score #hand bb.sh.var = #hand.left bb.sh.enum run loot replace entity @s weapon.offhand 1 mine ~ ~ ~ minecraft:iron_pickaxe{ucit: {id: 'inventory_modifier'}}

setblock ~ ~ ~ minecraft:air