import pathlib

import abjad
import baca
import evans
from quicktions import Fraction

import redbud


def _make_artificial_harmonics(chord):
    if isinstance(chord, abjad.Chord):
        head = chord.note_heads[-1]
        abjad.tweak(head).style = "#'harmonic"
    else:
        head = chord.note_head
        abjad.tweak(head).style = "#'harmonic-mixed"


def _add_accents(selections):
    for leaf in abjad.Selection(selections).leaves():
        accent = abjad.Articulation("accent")
        abjad.attach(accent, leaf)


def _add_tremolos(selections):
    for leaf in abjad.Selection(selections).leaves():
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
    left_text=abjad.Markup(r"\upright IV"),
    style="dashed-line-with-hook",
    right_padding=3,
)
abjad.tweak(start_text_span1).staff_padding = 4.5
stop_text_span1 = abjad.StopTextSpan()

start_text_span2 = abjad.StartTextSpan(
    left_text=abjad.Markup(r"\upright IV"),
    style="dashed-line-with-hook",
    right_padding=3,
)
abjad.tweak(start_text_span2).staff_padding = 4.5

start_text_span3 = abjad.StartTextSpan(
    left_text=abjad.Markup(r"\upright I"),
    style="dashed-line-with-hook",
    right_padding=3,
)
abjad.tweak(start_text_span3).staff_padding = 4.5

start_bow_mark1 = abjad.StartTextSpan(
    left_text=abjad.Markup(r"\upright clt."),
    style="dashed-line-with-hook",
    right_padding=3,
)
abjad.tweak(start_bow_mark1).staff_padding = 4.5

sv = abjad.StartTextSpan(
    left_text=abjad.Markup(r"\upright sv."),
    style="dashed-line-with-hook",
    right_padding=3,
)
abjad.tweak(sv).staff_padding = 4.5

pont = abjad.StartTextSpan(
    left_text=abjad.Markup(r"\upright sp."),
    style="solid-line-with-arrow",
    right_padding=1.5,
)
abjad.tweak(pont).staff_padding = 6

ord = abjad.StartTextSpan(
    left_text=abjad.Markup(r"\upright ord."),
    style="solid-line-with-arrow",
    right_padding=1.5,
)
abjad.tweak(ord).staff_padding = 6

tast = abjad.StartTextSpan(
    left_text=abjad.Markup(r"\upright st."),
    style="solid-line-with-arrow",
    right_padding=1.5,
)
abjad.tweak(tast).staff_padding = 6

tast_final = abjad.StartTextSpan(
    left_text=abjad.Markup(r"\upright st."),
    style="dashed-line-with-hook",
    right_padding=3,
)
abjad.tweak(tast_final).staff_padding = 6

strings1 = abjad.Markup(
    r"\markup \upright \center-column {II III IV}", direction=abjad.Up
)

strings2 = abjad.Markup(r"\markup \upright \center-column {I II}", direction=abjad.Up)

maker = evans.SegmentMaker(
    instruments=redbud.instruments,
    names=[r"\scordatura"],
    commands=[
        redbud.rhythm_commands,
        evans.call(
            "score",
            evans.SegmentMaker.transform_brackets,
            lambda _: abjad.Selection(_).components(abjad.Score),
        ),
        evans.call(
            "score",
            evans.SegmentMaker.rewrite_meter,
            lambda _: abjad.Selection(_).components(abjad.Score),
        ),
        "skips",
        evans.call(
            "score",
            redbud.octave_handler,
            lambda _: abjad.Selection(_).components(abjad.Score),
        ),
        redbud.handler_commands,
        evans.call(
            "score",
            evans.SegmentMaker.beam_score,
            lambda _: abjad.Selection(_).components(abjad.Score),
        ),
        evans.attach(
            "Voice 1",
            start_text_span1,
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 1",
            stop_text_span1,
            baca.selectors.leaf(8),
        ),
        evans.attach(
            "Voice 1",
            strings1,
            baca.selectors.leaf(8),
        ),
        evans.attach(
            "Voice 1",
            start_text_span2,
            baca.selectors.leaf(9),
        ),
        evans.attach(
            "Voice 1",
            stop_text_span1,
            baca.selectors.leaf(16),
        ),
        evans.attach(
            "Voice 1",
            start_text_span3,
            baca.selectors.leaf(16),
        ),
        evans.attach(
            "Voice 1",
            stop_text_span1,
            baca.selectors.leaf(23),
        ),
        evans.attach(
            "Voice 1",
            strings2,
            baca.selectors.leaf(23),
        ),
        evans.call(
            "Voice 1",
            trills,
            lambda _: abjad.Selection(_).logical_ties(pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Glissando(),
            baca.selectors.leaf(2),
        ),
        evans.attach(
            "Voice 1",
            abjad.Glissando(),
            baca.selectors.leaf(5),
        ),
        evans.attach(
            "Voice 1",
            abjad.Glissando(),
            baca.selectors.leaf(6),
        ),
        evans.attach(
            "Voice 1",
            abjad.Glissando(),
            baca.selectors.leaf(30),
        ),
        evans.call(
            "Voice 1",
            evans.GlissandoHandler(
                boolean_vector=[1],
                forget=False,
                apply_to="runs",
            ),
            baca.selectors.logical_ties(pitched=True).get([_ for _ in range(62, 76)]),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\markup \upright {accel. a 38}", direction=abjad.Up),
            baca.selectors.leaf(84),
        ),
        evans.attach(
            "Voice 1",
            start_bow_mark1,
            baca.selectors.leaf(-42),
        ),
        evans.attach(
            "Voice 1",
            stop_text_span1,
            baca.selectors.leaf(-33),
        ),
        evans.attach(
            "Voice 1",
            start_text_span3,
            baca.selectors.leaf(197),
        ),
        evans.attach(
            "Voice 1",
            stop_text_span1,
            baca.selectors.leaf(202),
        ),
        evans.attach(
            "Voice 1",
            start_text_span1,
            baca.selectors.leaf(203),
        ),
        evans.attach(
            "Voice 1",
            stop_text_span1,
            baca.selectors.leaf(209),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\markup \upright I", direction=abjad.Up),
            baca.selectors.leaf(210),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\markup \upright II", direction=abjad.Up),
            baca.selectors.leaf(213),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\markup \upright {accel. al fino}", direction=abjad.Up),
            baca.selectors.leaf(209),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\markup \upright {I al fino}", direction=abjad.Up),
            baca.selectors.leaf(217),
        ),
        evans.attach(
            "Voice 1",
            abjad.Glissando(),
            baca.selectors.leaf(207),
        ),
        evans.detach(
            "Voice 1",
            abjad.Dynamic("mf"),
            baca.selectors.leaf(222),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("ff"),
            baca.selectors.leaf(222),
        ),
        evans.detach(
            "Voice 1",
            abjad.Dynamic("p"),
            baca.selectors.leaf(225),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("fff"),
            baca.selectors.leaf(227),
        ),
        evans.detach(
            "Voice 1",
            abjad.StartHairpin(">"),
            baca.selectors.leaf(222),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin("<|"),
            baca.selectors.leaf(222),
        ),
        evans.detach(
            "Voice 1",
            abjad.StopHairpin(),
            baca.selectors.leaf(225),
        ),
        evans.attach(
            "Voice 1",
            abjad.StopHairpin(),
            baca.selectors.leaf(227),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\markup \upright {scratch al fino}", direction=abjad.Up),
            baca.selectors.leaf(222),
        ),
        evans.call(
            "Voice 1",
            _make_artificial_harmonics,
            baca.selectors.leaf(30),
        ),
        evans.attach(
            "Voice 1",
            abjad.Articulation("accent"),
            baca.selectors.leaf(38),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\markup \upright I", direction=abjad.Up),
            baca.selectors.leaf(38),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\markup \upright I", direction=abjad.Up),
            baca.selectors.leaf(44),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\markup \upright I", direction=abjad.Up),
            baca.selectors.leaf(46),
        ),
        evans.call(
            "Voice 1",
            _make_artificial_harmonics,
            baca.selectors.leaf(51),
        ),
        evans.attach(
            "Voice 1",
            sv,
            baca.selectors.leaf(53),
        ),
        evans.attach(
            "Voice 1",
            stop_text_span1,
            baca.selectors.leaf(55),
        ),
        evans.attach(
            "Voice 1",
            start_text_span1,
            baca.selectors.leaf(55),
        ),
        evans.attach(
            "Voice 1",
            stop_text_span1,
            baca.selectors.leaf(57),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\markup \upright III", direction=abjad.Up),
            baca.selectors.leaf(57),
        ),
        evans.attach(
            "Voice 1",
            start_text_span1,
            baca.selectors.leaf(58),
        ),
        evans.attach(
            "Voice 1",
            stop_text_span1,
            baca.selectors.leaf(60),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\markup \upright III", direction=abjad.Up),
            baca.selectors.leaf(60),
        ),
        evans.attach(
            "Voice 1",
            abjad.Glissando(),
            baca.selectors.leaf(61),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\markup \upright {sempre IV}", direction=abjad.Up),
            baca.selectors.leaf(63),
        ),
        evans.call(
            "Voice 1",
            _add_tremolos,
            baca.selectors.leaves().get([_ for _ in range(63, 84)]),
        ),
        evans.call(
            "Voice 1",
            _add_tremolos,
            baca.selectors.leaves().get([_ for _ in range(124, 188)]),
        ),
        evans.call(
            "Voice 1",
            _add_accents,
            baca.selectors.leaves().get([_ for _ in range(71, 76)]),
        ),
        evans.call(
            "Voice 1",
            _add_accents,
            baca.selectors.leaves().get([_ for _ in range(80, 84)]),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\markup \upright XFB.", direction=abjad.Up),
            baca.selectors.leaf(63),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\markup \upright TO.", direction=abjad.Up),
            baca.selectors.leaf(64),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\markup \upright IT.", direction=abjad.Up),
            baca.selectors.leaf(67),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\markup \upright XFB.", direction=abjad.Up),
            baca.selectors.leaf(70),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\markup \upright IT.", direction=abjad.Up),
            baca.selectors.leaf(79),
        ),
        evans.attach(
            "Voice 1",
            sv,
            baca.selectors.leaf(84),
        ),
        evans.attach(
            "Voice 1",
            stop_text_span1,
            baca.selectors.leaf(95),
        ),
        evans.attach(
            "Voice 1",
            pont,
            baca.selectors.leaf(63),
        ),
        evans.attach(
            "Voice 1",
            stop_text_span1,
            baca.selectors.leaf(64),
        ),
        evans.attach(
            "Voice 1",
            ord,
            baca.selectors.leaf(64),
        ),
        evans.attach(
            "Voice 1",
            stop_text_span1,
            baca.selectors.leaf(65),
        ),
        evans.attach(
            "Voice 1",
            tast,
            baca.selectors.leaf(65),
        ),
        evans.attach(
            "Voice 1",
            stop_text_span1,
            baca.selectors.leaf(76),
        ),
        evans.attach(
            "Voice 1",
            pont,
            baca.selectors.leaf(76),
        ),
        evans.attach(
            "Voice 1",
            stop_text_span1,
            baca.selectors.leaf(78),
        ),
        evans.attach(
            "Voice 1",
            ord,
            baca.selectors.leaf(78),
        ),
        evans.attach(
            "Voice 1",
            stop_text_span1,
            baca.selectors.leaf(80),
        ),
        evans.attach(
            "Voice 1",
            tast_final,
            baca.selectors.leaf(80),
        ),
        evans.attach(
            "Voice 1",
            stop_text_span1,
            baca.selectors.leaf(89),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\markup \upright II", direction=abjad.Up),
            baca.selectors.leaf(84),
        ),
        evans.call(
            "Voice 1",
            note_head_handler,
            baca.selectors.leaves().get([_ for _ in range(5, 8)]),
        ),
        evans.call(
            "Voice 1",
            note_head_handler,
            baca.selectors.leaves().get([_ for _ in range(66, 69)]),
        ),
        evans.call(
            "Voice 1",
            note_head_handler,
            baca.selectors.leaves().get([_ for _ in range(84, 95)]),
        ),
        evans.call(
            "Voice 1",
            note_head_handler,
            baca.selectors.leaves().get([_ for _ in range(124, 188)]),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\markup \upright II", direction=abjad.Up),
            baca.selectors.leaf(102),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\markup \upright I", direction=abjad.Up),
            baca.selectors.leaf(103),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\markup \upright II", direction=abjad.Up),
            baca.selectors.leaf(104),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\markup \upright I", direction=abjad.Up),
            baca.selectors.leaf(107),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r'\markup \upright {"II  "} ', direction=abjad.Up),
            baca.selectors.leaf(108),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\markup \upright I", direction=abjad.Up),
            baca.selectors.leaf(109),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\markup \upright IV", direction=abjad.Up),
            baca.selectors.leaf(110),
        ),
        evans.attach(
            "Voice 1",
            start_text_span3,
            baca.selectors.leaf(126),
        ),
        evans.attach(
            "Voice 1",
            stop_text_span1,
            baca.selectors.leaf(133),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\markup \upright II", direction=abjad.Up),
            baca.selectors.leaf(133),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\markup \upright I", direction=abjad.Up),
            baca.selectors.leaf(140),
        ),
        evans.attach(
            "Voice 1",
            invisible_command,
            lambda _: abjad.Selection(_).leaf(-1, pitched=True),
        ),
        evans.attach(
            "Global Context",
            mark,
            baca.selectors.leaf(0),
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
            baca.selectors.leaf(5),
        ),
        evans.attach(
            "Global Context",
            evans.metric_modulation(
                metronome_mark=((1, 4), 128),
                left_note=(abjad.Note("c'4.")),
                right_note=(abjad.Note("c'4")),
                modulated_beat=(abjad.Note("c'4")),
            ),
            baca.selectors.leaf(7),
        ),
        evans.attach(
            "Global Context",
            mark,
            baca.selectors.leaf(9),
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
            baca.selectors.leaf(11),
        ),
        evans.attach(
            "Global Context",
            evans.metric_modulation(
                metronome_mark=((1, 4), 96),
                left_note=(abjad.Note("c'4")),
                right_note=(abjad.Note("c'8")),
                modulated_beat=(abjad.Note("c'4")),
            ),
            baca.selectors.leaf(20),
        ),
        evans.attach(
            "Global Context",
            mark2,
            baca.selectors.leaf(37),
        ),
        evans.attach(
            "Global Context",
            abjad.MetronomeMark((1, 4), 128),
            baca.selectors.leaf(5),
        ),
        evans.attach(
            "Global Context",
            abjad.MetronomeMark((1, 4), Fraction(256, 3)),
            baca.selectors.leaf(7),
        ),
        evans.attach(
            "Global Context",
            abjad.MetronomeMark((1, 4), 72),
            baca.selectors.leaf(9),
        ),
        evans.attach(
            "Global Context",
            abjad.MetronomeMark((1, 4), 96),
            baca.selectors.leaf(11),
        ),
        evans.attach(
            "Global Context",
            abjad.MetronomeMark((1, 4), 48),
            baca.selectors.leaf(20),
        ),
        evans.attach(
            "Global Context",
            abjad.MetronomeMark((1, 4), 105),
            baca.selectors.leaf(37),
        ),
    ],
    score_template=redbud.score,
    time_signatures=redbud.time_signatures,
    clef_handlers=redbud.clef_handlers,
    tuplet_bracket_noteheads=True,
    add_final_grand_pause=True,
    score_includes=[
        "/Users/gregoryevans/abjad/docs/source/_stylesheets/abjad.ily",
        "/Users/gregoryevans/Scores/redbud/redbud/build/measured_stylesheet.ily",
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
