import redbud

key_list_1 = [
    "cello_pitch_handler_one",
    # "cello_pitch_handler_one",
    # "cello_pitch_handler_two",
    # "cello_pitch_handler_two",
]

dict = {
    "cello_pitch_handler_one": redbud.cello_pitch_handler_one,
    "cello_pitch_handler_two": redbud.cello_pitch_handler_two,
}


material_list_1 = [dict[x] for x in key_list_1]

materials = [material_list_1]
pitch_material_list = []
for x in materials:
    pitch_material_list.extend(x)
