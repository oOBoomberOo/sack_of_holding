execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #boomber:sack_of_holding/container run function boomber:sack_of_holding/sack/decode
execute as @s[distance=..5.5] if score #bb.sh.raycast bb.success matches 0 positioned ^ ^ ^0.1 run function boomber:sack_of_holding/sack/raycast