from collections import OrderedDict

import abjad
import tsmakers
from abjadext import rmakers

import redbud

music_specifiers = OrderedDict(
    [(f"Voice {i+1}", None) for i, name in enumerate(redbud.instruments)]
)

# #######
# rhythm#
# #######
rhythm_target_timespan = abjad.Timespan(0, 70)

rhythm_timespan_maker = tsmakers.TaleaTimespanMaker(
    playing_talea=rmakers.Talea(
        counts=([6, 5, 4, 3, 4, 5, 4, 3, 2, 3, 4, 5]),
        denominator=4,
    ),
    silence_talea=rmakers.Talea(counts=([0]), denominator=4),
)

rhythm_timespan_list = rhythm_timespan_maker(
    music_specifiers=music_specifiers, target_timespan=rhythm_target_timespan
)

# ######
# pitch#
# ######
pitch_target_timespan = abjad.Timespan(0, 70)

pitch_timespan_maker = tsmakers.TaleaTimespanMaker(
    playing_talea=rmakers.Talea(counts=([5, 4, 3, 2, 1, 2, 3, 4]), denominator=4),
    silence_talea=rmakers.Talea(counts=([0]), denominator=4),
)

pitch_timespan_list = pitch_timespan_maker(
    music_specifiers=music_specifiers, target_timespan=pitch_target_timespan
)

# ########
# dynamic#
# ########
dynamic_target_timespan = abjad.Timespan(0, 70)

dynamic_timespan_maker = tsmakers.TaleaTimespanMaker(
    playing_talea=rmakers.Talea(
        counts=([8, 7, 6, 5, 6, 7, 6, 5, 4, 5, 6, 7]), denominator=4
    ),
    silence_talea=rmakers.Talea(counts=([0]), denominator=16),
)

dynamic_timespan_list = dynamic_timespan_maker(
    music_specifiers=music_specifiers, target_timespan=dynamic_target_timespan
)

# ########
# slur#
# ########
slur_target_timespan = abjad.Timespan(0, 70)

slur_timespan_maker = tsmakers.TaleaTimespanMaker(
    playing_talea=rmakers.Talea(counts=([3, 2, 1, 2, 2, 4, 3, 3, 1, 2]), denominator=4),
    silence_talea=rmakers.Talea(counts=([0]), denominator=16),
)

slur_timespan_list = slur_timespan_maker(
    music_specifiers=music_specifiers, target_timespan=slur_target_timespan
)

# #############
# articulation#
# #############
articulation_target_timespan = abjad.Timespan(0, 70)

articulation_timespan_maker = tsmakers.TaleaTimespanMaker(
    playing_talea=rmakers.Talea(counts=([54]), denominator=1),
    silence_talea=rmakers.Talea(counts=([0]), denominator=4),
)

articulation_timespan_list = articulation_timespan_maker(
    music_specifiers=music_specifiers, target_timespan=articulation_target_timespan
)
