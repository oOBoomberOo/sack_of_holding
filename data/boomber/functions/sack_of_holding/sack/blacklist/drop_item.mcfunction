summon item ~ ~ ~ {Tags: ['boomber.sack_of_holding.drop_item'], PickUpDelay: 5s, Item: {id: "minecraft:stone", Count: 1b}}

data modify entity @e[type=item, limit=1, tag=boomber.sack_of_holding.drop_item] Item set from entity @s Item.tag.ucit.sack_of_holding.calculation.item
tag @e[type=item] remove boomber.sack_of_holding.drop_item