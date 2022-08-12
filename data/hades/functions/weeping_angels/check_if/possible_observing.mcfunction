execute if entity @p[limit=1,predicate=hades:is_blind] if entity @s[distance=4.5..] run tag @p add blind_n_far
execute unless entity @p[limit=1,tag=blind_n_far] run function hades:weeping_angels/check_if/observing
tag @p remove blind_n_far