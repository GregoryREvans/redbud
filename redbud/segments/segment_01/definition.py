import pathlib

import abjad
import baca
import evans
from quicktions import Fraction

import redbud


def _make_artificial_harmonics(chord):
    if isinstance(chord, abjad.Chord):
        head = chord.note_heads[-1]
        abjad.tweak(head).style = "harmonic"
    else:
        head = chord.note_head
        abjad.tweak(head).style = "harmonic-mixed"


def _add_accents(selections):
    for leaf in abjad.select(selections).leaves():
        accent = abjad.Articulation("accent")
        abjad.attach(accent, leaf)


def _add_tremolos(selections):
    for leaf in abjad.select(selections).leaves():
        tremolo = abjad.StemTremolo(32)
        abjad.attach(tremolo, leaf)


note_head_handler = evans.NoteheadHandler(
    notehead_list=[
        "triangle",
        "triangle",
        "triangle",
        "harmonic-mixed",
        "harmonic-mixed",
        "triangle",
        "harmonic-mixed",
        "harmonic-mixed",
        "harmonic-mixed",
        "harmonic-mixed",
        "harmonic-mixed",
        "triangle",
        "triangle",
        "triangle",
        "triangle",
        "triangle",
        "triangle",
        "default",
        "default",
        "harmonic-mixed",
        "harmonic-mixed",
        "triangle",
        "default",
        "triangle",
        "harmonic-mixed",
        "triangle",
        "harmonic-mixed",
        "harmonic-mixed",
        "harmonic-mixed",
        "harmonic-mixed",
        "default",
        "default",
    ],
    head_boolean_vector=[1],
    head_vector_forget=False,
    forget=False,
)

c = abjad.LilyPondLiteral(
    [
        r"""_ \markup {""",
        r"""    \override #'(font-name . "STIXGeneral")""",
        r"""    \with-color #white""",
        r"""    \right-column {""",
        r"""        \line { "\hspace #0.75 ............" }""",
        r"""        \with-color #black""",
        r"""        \line { \hspace #0.75 Iowa City, Ia. }""",
        r"""        \with-color #black""",
        r"""        \line { \hspace #0.75 September 2020 }""",
        r"""    }""",
        r"""}""",
    ],
    format_slot="absolute_after",
)

met = abjad.MetronomeMark.make_tempo_equation_markup((1, 4), 72)
mark = abjad.LilyPondLiteral(
    [r"^ \markup {", r"  \huge", r"  \concat {", f"      {str(met)[8:]}", r"  }", r"}"],
    format_slot="after",
)

met2 = abjad.MetronomeMark.make_tempo_equation_markup((1, 4), 105)
mark2 = abjad.LilyPondLiteral(
    [
        r"^ \markup {",
        r"  \huge",
        r"  \concat {",
        f"      {str(met2)[8:]}",
        r"  }",
        r"}",
    ],
    format_slot="after",
)

invisible_command = abjad.LilyPondLiteral(
    r"\once \override Staff.TimeSignature.color = #white", format_slot="after"
)

trills = evans.TrillHandler(
    boolean_vector=[1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
    forget=False,
    only_chords=True,
)

start_text_span1 = abjad.StartTextSpan(
    left_text=abjad.Markup("IV").upright(),
    style="dashed-line-with-hook",
    right_padding=3,
)
abjad.tweak(start_text_span1).staff_padding = 4.5
stop_text_span1 = abjad.StopTextSpan()

start_text_span2 = abjad.StartTextSpan(
    left_text=abjad.Markup("IV").upright(),
    style="dashed-line-with-hook",
    right_padding=3,
)
abjad.tweak(start_text_span2).staff_padding = 4.5

start_text_span3 = abjad.StartTextSpan(
    left_text=abjad.Markup("I").upright(),
    style="dashed-line-with-hook",
    right_padding=3,
)
abjad.tweak(start_text_span3).staff_padding = 4.5

start_bow_mark1 = abjad.StartTextSpan(
    left_text=abjad.Markup("clt.").upright(),
    style="dashed-line-with-hook",
    right_padding=3,
)
abjad.tweak(start_bow_mark1).staff_padding = 4.5

sv = abjad.StartTextSpan(
    left_text=abjad.Markup("sv.").upright(),
    style="dashed-line-with-hook",
    right_padding=3,
)
abjad.tweak(sv).staff_padding = 4.5

pont = abjad.StartTextSpan(
    left_text=abjad.Markup("sp.").upright(),
    style="solid-line-with-arrow",
    right_padding=1.5,
)
abjad.tweak(pont).staff_padding = 6

ord = abjad.StartTextSpan(
    left_text=abjad.Markup("ord.").upright(),
    style="solid-line-with-arrow",
    right_padding=1.5,
)
abjad.tweak(ord).staff_padding = 6

tast = abjad.StartTextSpan(
    left_text=abjad.Markup("st.").upright(),
    style="solid-line-with-arrow",
    right_padding=1.5,
)
abjad.tweak(tast).staff_padding = 6

tast_final = abjad.StartTextSpan(
    left_text=abjad.Markup("st.").upright(),
    style="dashed-line-with-hook",
    right_padding=3,
)
abjad.tweak(tast_final).staff_padding = 6

strings1 = abjad.Markup.center_column(["II", "III", "IV"]).upright()
strings1 = abjad.Markup(strings1, direction=abjad.Up)

strings2 = abjad.Markup.center_column(["I", "II"]).upright()
strings2 = abjad.Markup(strings2, direction=abjad.Up)

maker = evans.SegmentMaker(
    instruments=redbud.instruments,
    names=[r"\scordatura"],
    commands=[
        redbud.rhythm_commands,
        evans.call(
            "score",
            evans.SegmentMaker.transform_brackets,
            abjad.select().components(abjad.Score),
        ),
        evans.call(
            "score",
            evans.SegmentMaker.rewrite_meter,
            abjad.select().components(abjad.Score),
        ),
        "skips",
        evans.call(
            "score",
            redbud.octave_handler,
            abjad.select().components(abjad.Score),
        ),
        redbud.handler_commands,
        evans.call(
            "score",
            evans.SegmentMaker.beam_score,
            abjad.select().components(abjad.Score),
        ),
        evans.attach(
            "Voice 1",
            start_text_span1,
            baca.leaf(0),
        ),
        evans.attach(
            "Voice 1",
            stop_text_span1,
            baca.leaf(8),
        ),
        evans.attach(
            "Voice 1",
            strings1,
            baca.leaf(8),
        ),
        evans.attach(
            "Voice 1",
            start_text_span2,
            baca.leaf(9),
        ),
        evans.attach(
            "Voice 1",
            stop_text_span1,
            baca.leaf(16),
        ),
        evans.attach(
            "Voice 1",
            start_text_span3,
            baca.leaf(16),
        ),
        evans.attach(
            "Voice 1",
            stop_text_span1,
            baca.leaf(23),
        ),
        evans.attach(
            "Voice 1",
            strings2,
            baca.leaf(23),
        ),
        evans.call(
            "Voice 1",
            trills,
            abjad.select().logical_ties(pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Glissando(),
            baca.leaf(2),
        ),
        evans.attach(
            "Voice 1",
            abjad.Glissando(),
            baca.leaf(5),
        ),
        evans.attach(
            "Voice 1",
            abjad.Glissando(),
            baca.leaf(6),
        ),
        evans.attach(
            "Voice 1",
            abjad.Glissando(),
            baca.leaf(30),
        ),
        evans.call(
            "Voice 1",
            evans.GlissandoHandler(
                boolean_vector=[1],
                forget=False,
                apply_to="runs",
            ),
            baca.logical_ties(pitched=True).get([_ for _ in range(62, 76)]),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup("accel. a 38", direction=abjad.Up).upright(),
            baca.leaf(84),
        ),
        evans.attach(
            "Voice 1",
            start_bow_mark1,
            baca.leaf(-42),
        ),
        evans.attach(
            "Voice 1",
            stop_text_span1,
            baca.leaf(-33),
        ),
        evans.attach(
            "Voice 1",
            start_text_span3,
            baca.leaf(197),
        ),
        evans.attach(
            "Voice 1",
            stop_text_span1,
            baca.leaf(202),
        ),
        evans.attach(
            "Voice 1",
            start_text_span1,
            baca.leaf(203),
        ),
        evans.attach(
            "Voice 1",
            stop_text_span1,
            baca.leaf(209),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup("I", direction=abjad.Up).upright(),
            baca.leaf(210),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup("II", direction=abjad.Up).upright(),
            baca.leaf(213),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup("accel. al fino", direction=abjad.Up).upright(),
            baca.leaf(209),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup("I al fino", direction=abjad.Up).upright(),
            baca.leaf(217),
        ),
        evans.attach(
            "Voice 1",
            abjad.Glissando(),
            baca.leaf(207),
        ),
        evans.detach(
            "Voice 1",
            abjad.Dynamic("mf"),
            baca.leaf(222),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("ff"),
            baca.leaf(222),
        ),
        evans.detach(
            "Voice 1",
            abjad.Dynamic("p"),
            baca.leaf(225),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("fff"),
            baca.leaf(227),
        ),
        evans.detach(
            "Voice 1",
            abjad.StartHairpin(">"),
            baca.leaf(222),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin("<|"),
            baca.leaf(222),
        ),
        evans.detach(
            "Voice 1",
            abjad.StopHairpin(),
            baca.leaf(225),
        ),
        evans.attach(
            "Voice 1",
            abjad.StopHairpin(),
            baca.leaf(227),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup("scratch al fino", direction=abjad.Up).upright(),
            baca.leaf(222),
        ),
        evans.call(
            "Voice 1",
            _make_artificial_harmonics,
            baca.leaf(30),
        ),
        evans.attach(
            "Voice 1",
            abjad.Articulation("accent"),
            baca.leaf(38),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup("I", direction=abjad.Up).upright(),
            baca.leaf(38),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup("I", direction=abjad.Up).upright(),
            baca.leaf(44),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup("I", direction=abjad.Up).upright(),
            baca.leaf(46),
        ),
        evans.call(
            "Voice 1",
            _make_artificial_harmonics,
            baca.leaf(51),
        ),
        evans.attach(
            "Voice 1",
            sv,
            baca.leaf(53),
        ),
        evans.attach(
            "Voice 1",
            stop_text_span1,
            baca.leaf(55),
        ),
        evans.attach(
            "Voice 1",
            start_text_span1,
            baca.leaf(55),
        ),
        evans.attach(
            "Voice 1",
            stop_text_span1,
            baca.leaf(57),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup("III", direction=abjad.Up).upright(),
            baca.leaf(57),
        ),
        evans.attach(
            "Voice 1",
            start_text_span1,
            baca.leaf(58),
        ),
        evans.attach(
            "Voice 1",
            stop_text_span1,
            baca.leaf(60),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup("III", direction=abjad.Up).upright(),
            baca.leaf(60),
        ),
        evans.attach(
            "Voice 1",
            abjad.Glissando(),
            baca.leaf(61),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup("sempre IV", direction=abjad.Up).upright(),
            baca.leaf(63),
        ),
        evans.call(
            "Voice 1",
            _add_tremolos,
            baca.leaves().get([_ for _ in range(63, 84)]),
        ),
        evans.call(
            "Voice 1",
            _add_tremolos,
            baca.leaves().get([_ for _ in range(124, 188)]),
        ),
        evans.call(
            "Voice 1",
            _add_accents,
            baca.leaves().get([_ for _ in range(71, 76)]),
        ),
        evans.call(
            "Voice 1",
            _add_accents,
            baca.leaves().get([_ for _ in range(80, 84)]),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup("XFB.", direction=abjad.Up).upright(),
            baca.leaf(63),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup("TO.", direction=abjad.Up).upright(),
            baca.leaf(64),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup("IT.", direction=abjad.Up).upright(),
            baca.leaf(67),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup("XFB.", direction=abjad.Up).upright(),
            baca.leaf(70),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup("IT.", direction=abjad.Up).upright(),
            baca.leaf(79),
        ),
        evans.attach(
            "Voice 1",
            sv,
            baca.leaf(84),
        ),
        evans.attach(
            "Voice 1",
            stop_text_span1,
            baca.leaf(95),
        ),
        evans.attach(
            "Voice 1",
            pont,
            baca.leaf(63),
        ),
        evans.attach(
            "Voice 1",
            stop_text_span1,
            baca.leaf(64),
        ),
        evans.attach(
            "Voice 1",
            ord,
            baca.leaf(64),
        ),
        evans.attach(
            "Voice 1",
            stop_text_span1,
            baca.leaf(65),
        ),
        evans.attach(
            "Voice 1",
            tast,
            baca.leaf(65),
        ),
        evans.attach(
            "Voice 1",
            stop_text_span1,
            baca.leaf(76),
        ),
        evans.attach(
            "Voice 1",
            pont,
            baca.leaf(76),
        ),
        evans.attach(
            "Voice 1",
            stop_text_span1,
            baca.leaf(78),
        ),
        evans.attach(
            "Voice 1",
            ord,
            baca.leaf(78),
        ),
        evans.attach(
            "Voice 1",
            stop_text_span1,
            baca.leaf(80),
        ),
        evans.attach(
            "Voice 1",
            tast_final,
            baca.leaf(80),
        ),
        evans.attach(
            "Voice 1",
            stop_text_span1,
            baca.leaf(89),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup("II", direction=abjad.Up).upright(),
            baca.leaf(84),
        ),
        evans.call(
            "Voice 1",
            note_head_handler,
            baca.leaves().get([_ for _ in range(5, 8)]),
        ),
        evans.call(
            "Voice 1",
            note_head_handler,
            baca.leaves().get([_ for _ in range(66, 69)]),
        ),
        evans.call(
            "Voice 1",
            note_head_handler,
            baca.leaves().get([_ for _ in range(84, 95)]),
        ),
        evans.call(
            "Voice 1",
            note_head_handler,
            baca.leaves().get([_ for _ in range(124, 188)]),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup("II", direction=abjad.Up).upright(),
            baca.leaf(102),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup("I", direction=abjad.Up).upright(),
            baca.leaf(103),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup("II", direction=abjad.Up).upright(),
            baca.leaf(104),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup("I", direction=abjad.Up).upright(),
            baca.leaf(107),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup('"II  "', direction=abjad.Up).upright(),
            baca.leaf(108),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup("I", direction=abjad.Up).upright(),
            baca.leaf(109),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup("IV", direction=abjad.Up).upright(),
            baca.leaf(110),
        ),
        evans.attach(
            "Voice 1",
            start_text_span3,
            baca.leaf(126),
        ),
        evans.attach(
            "Voice 1",
            stop_text_span1,
            baca.leaf(133),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup("II", direction=abjad.Up).upright(),
            baca.leaf(133),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup("I", direction=abjad.Up).upright(),
            baca.leaf(140),
        ),
        evans.attach(
            "Voice 1",
            invisible_command,
            abjad.select().leaf(-1, pitched=True),
        ),
        evans.attach(
            "Global Context",
            mark,
            baca.leaf(0),
        ),
        evans.attach(
            "Global Context",
            evans.metric_modulation(
                metronome_mark=((1, 4), 72),
                left_note=(
                    abjad.Tuplet(multiplier=(3, 4), components=[abjad.Note("c'4")])
                ),
                right_note=(
                    abjad.Tuplet(multiplier=(2, 3), components=[abjad.Note("c'2")])
                ),
                modulated_beat=(abjad.Note("c'4")),
            ),
            baca.leaf(5),
        ),
        evans.attach(
            "Global Context",
            evans.metric_modulation(
                metronome_mark=((1, 4), 128),
                left_note=(abjad.Note("c'4.")),
                right_note=(abjad.Note("c'4")),
                modulated_beat=(abjad.Note("c'4")),
            ),
            baca.leaf(7),
        ),
        evans.attach(
            "Global Context",
            mark,
            baca.leaf(9),
        ),
        evans.attach(
            "Global Context",
            evans.metric_modulation(
                metronome_mark=((1, 4), 72),
                left_note=(abjad.Note("c'4")),
                right_note=(
                    abjad.Tuplet(multiplier=(2, 3), components=[abjad.Note("c'2")])
                ),
                modulated_beat=(abjad.Note("c'4")),
            ),
            baca.leaf(11),
        ),
        evans.attach(
            "Global Context",
            evans.metric_modulation(
                metronome_mark=((1, 4), 96),
                left_note=(abjad.Note("c'4")),
                right_note=(abjad.Note("c'8")),
                modulated_beat=(abjad.Note("c'4")),
            ),
            baca.leaf(20),
        ),
        evans.attach(
            "Global Context",
            mark2,
            baca.leaf(37),
        ),
        evans.attach(
            "Global Context",
            abjad.MetronomeMark((1, 4), 128),
            baca.leaf(5),
        ),
        evans.attach(
            "Global Context",
            abjad.MetronomeMark((1, 4), Fraction(256, 3)),
            baca.leaf(7),
        ),
        evans.attach(
            "Global Context",
            abjad.MetronomeMark((1, 4), 72),
            baca.leaf(9),
        ),
        evans.attach(
            "Global Context",
            abjad.MetronomeMark((1, 4), 96),
            baca.leaf(11),
        ),
        evans.attach(
            "Global Context",
            abjad.MetronomeMark((1, 4), 48),
            baca.leaf(20),
        ),
        evans.attach(
            "Global Context",
            abjad.MetronomeMark((1, 4), 105),
            baca.leaf(37),
        ),
    ],
    score_template=redbud.score,
    time_signatures=redbud.time_signatures,
    clef_handlers=redbud.clef_handlers,
    tuplet_bracket_noteheads=True,
    add_final_grand_pause=True,
    score_includes=[
        "/Users/evansdsg2/abjad/docs/source/_stylesheets/abjad.ily",
        "/Users/evansdsg2/Scores/redbud/redbud/build/measured_stylesheet.ily",
    ],
    segment_name="segment_01",
    current_directory=pathlib.Path(__file__).resolve().parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=False,
    barline="|.",
    tempo=((1, 4), 72),
    page_break_counts=[90],
    colophon=c,
)

maker.build_segment()
