import redbud

key_list_1 = [  # tempi = 72 -> 97 -> 48 -> 105
    "rhythm_handler_one",  # segment 1
    "rhythm_handler_one",
    "rhythm_handler_one",
    "rhythm_handler_one",
    "rhythm_handler_one",
    "rhythm_handler_one",
    "rhythm_handler_one",
    "rhythm_handler_one",
    "rhythm_handler_one",
    "rhythm_handler_one",
    "rhythm_handler_one",
    "rhythm_handler_one",
    "rhythm_handler_one",
    "rhythm_handler_one",
    "rhythm_handler_one",
    "rhythm_handler_two",  # segment 2
    "rhythm_handler_two",
    "rhythm_handler_two",
    "rhythm_handler_two",
    "rhythm_handler_two",
    "rhythm_handler_two",
    "rhythm_handler_two",
    "rhythm_handler_two",
    "rhythm_handler_two",
    "rhythm_handler_two",
    "rhythm_handler_two",
    "rhythm_handler_two",
    "rhythm_handler_one",  # segment 3
    "rhythm_handler_one",
    "rhythm_handler_one",
    "rhythm_handler_one",
    "rhythm_handler_one",
    "rhythm_handler_one",
    "rhythm_handler_one",
    "rhythm_handler_one",
    "rhythm_handler_one",
    "rhythm_handler_one",
    "rhythm_handler_one",
    "rhythm_handler_one",
    "rhythm_handler_one",
    "rhythm_handler_one",
    "rhythm_handler_one",
    "rhythm_handler_one",
    "rhythm_handler_one",
    "rhythm_handler_one",
    "rhythm_handler_one",
    "rhythm_handler_one",
    "rhythm_handler_one",
    "rhythm_handler_one",
    "rhythm_handler_two",  # segment 4
    "rhythm_handler_two",
    "rhythm_handler_two",
    "rhythm_handler_two",
    "rhythm_handler_two",
    "rhythm_handler_two",
    "rhythm_handler_two",
    "rhythm_handler_two",
    "rhythm_handler_two",
    "rhythm_handler_two",
    "rhythm_handler_two",
    "rhythm_handler_two",
    "rhythm_handler_two",
    "rhythm_handler_two",
    "rhythm_handler_two",
    "rhythm_handler_two",
    "rhythm_handler_two",
    "rhythm_handler_two",
    "rhythm_handler_two",
    "rhythm_handler_two",
    "rhythm_handler_two",
    "rhythm_handler_two",
    "rhythm_handler_two",
    "rhythm_handler_two",
    "rhythm_handler_two",
    "rhythm_handler_two",
    "rhythm_handler_two",
    "rhythm_handler_two",
    "rhythm_handler_two",
    "rhythm_handler_two",
    "rhythm_handler_two",
    "rhythm_handler_two",
]

dict = {
    "rhythm_handler_one": redbud.rhythm_handler_one,
    "rhythm_handler_two": redbud.rhythm_handler_two,
    "rhythm_handler_three": redbud.rhythm_handler_three,
    "rhythm_handler_four": redbud.rhythm_handler_four,
    "silence_maker": redbud.silence_maker,
}


material_list_1 = [dict[x] for x in key_list_1]

materials = [material_list_1]
rhythm_material_list = []
for x in materials:
    rhythm_material_list.extend(x)

assert isinstance(rhythm_material_list, list)
