\version "2.19.84"                                                             %! abjad.LilyPondFile._get_format_pieces()
\language "english"                                                            %! abjad.LilyPondFile._get_format_pieces()

\include "/Users/evansdsg2/abjad/docs/source/_stylesheets/abjad.ily"           %! abjad.LilyPondFile._get_formatted_includes()
\include "/Users/evansdsg2/Scores/redbud/redbud/build/measured_stylesheet.ily" %! abjad.LilyPondFile._get_formatted_includes()

\header {                                                                      %! abjad.LilyPondFile._get_formatted_blocks()
    tagline = ##f
}                                                                              %! abjad.LilyPondFile._get_formatted_blocks()

\layout {}

\paper {}

\score {                                                                       %! abjad.LilyPondFile._get_formatted_blocks()

    \context Score = "redbud Score"
    <<

        \context TimeSignatureContext = "Global Context"
        {
            % [Global Context measure 1]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \tempo 4=72
            \time 6/4                                                          %! scaling time signatures
            s1 * 3/2
            ^ \markup {
              \huge
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #1 #"72"
              }
            }
            % [Global Context measure 2]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 9/4                                                          %! scaling time signatures
            s1 * 9/4
            % [Global Context measure 3]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 4]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 9/4                                                          %! scaling time signatures
            s1 * 9/4
            % [Global Context measure 5]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 7/4                                                          %! scaling time signatures
            s1 * 7/4
            % [Global Context measure 6]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \tempo 4=128
            \time 2/4                                                          %! scaling time signatures
            s1 * 1/2
            ^ \markup {
              \huge
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #1 #"128"
                  \hspace #1
                  \upright [
                  {
                \score
                    {
                        \new Score
                        \with
                        {
                            \override SpacingSpanner.spacing-increment = #0.5
                            proportionalNotationDuration = ##f
                        }
                        <<
                            \new RhythmicStaff
                            \with
                            {
                                \remove Time_signature_engraver
                                \remove Staff_symbol_engraver
                                \override Stem.direction = #up
                                \override Stem.length = #5
                                \override TupletBracket.bracket-visibility = ##t
                                \override TupletBracket.direction = #up
                                \override TupletBracket.minimum-length = #4
                                \override TupletBracket.padding = #1.25
                                \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                \override TupletNumber.font-size = #0
                                \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                tupletFullLength = ##t
                            }
                            {
                                \tweak text #tuplet-number::calc-fraction-text
                                \times 3/4 {
                                    c'4
                                }
                            }
                        >>
                        \layout {
                            indent = #0
                            ragged-right = ##t
                        }
                    }
                =
                \hspace
                    #-0.5
                \score
                    {
                        \new Score
                        \with
                        {
                            \override SpacingSpanner.spacing-increment = #0.5
                            proportionalNotationDuration = ##f
                        }
                        <<
                            \new RhythmicStaff
                            \with
                            {
                                \remove Time_signature_engraver
                                \remove Staff_symbol_engraver
                                \override Stem.direction = #up
                                \override Stem.length = #5
                                \override TupletBracket.bracket-visibility = ##t
                                \override TupletBracket.direction = #up
                                \override TupletBracket.minimum-length = #4
                                \override TupletBracket.padding = #1.25
                                \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                \override TupletNumber.font-size = #0
                                \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                tupletFullLength = ##t
                            }
                            {
                                \tweak edge-height #'(0.7 . 0)
                                \times 2/3 {
                                    c'2
                                }
                            }
                        >>
                        \layout {
                            indent = #0
                            ragged-right = ##t
                        }
                    }
                }
                  \hspace #0.5
                  \upright ]
              }
            }
            % [Global Context measure 7]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 8]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \tempo \markup \abjad-metronome-mark-mixed-number-markup #2 #0 #1 #"85" #"1" #"3"
            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            ^ \markup {
              \huge
              \concat {
                  \abjad-metronome-mark-mixed-number-markup #2 #0 #1 #"85" #"1" #"3"
                  \hspace #1
                  \upright [
                  \abjad-metric-modulation #2 #1 #2 #0 #'(0.6 . 0.6)
                  \hspace #0.5
                  \upright ]
              }
            }
            % [Global Context measure 9]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 10]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \tempo 4=72
            \time 6/4                                                          %! scaling time signatures
            s1 * 3/2
            ^ \markup {
              \huge
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #1 #"72"
              }
            }
            % [Global Context measure 11]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 9/4                                                          %! scaling time signatures
            s1 * 9/4
            % [Global Context measure 12]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \tempo 4=96
            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            ^ \markup {
              \huge
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #1 #"96"
                  \hspace #1
                  \upright [
                  \abjad-metric-modulation-tuplet-rhs #2 #0 #1 #0 #2 #3 #'(0.6 . 0.6)
                  \hspace #0.5
                  \upright ]
              }
            }
            % [Global Context measure 13]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 9/4                                                          %! scaling time signatures
            s1 * 9/4
            % [Global Context measure 14]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 7/4                                                          %! scaling time signatures
            s1 * 7/4
            % [Global Context measure 15]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 2/4                                                          %! scaling time signatures
            s1 * 1/2
            % [Global Context measure 16]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 17]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 18]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 19]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 6/4                                                          %! scaling time signatures
            s1 * 3/2
            % [Global Context measure 20]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 9/4                                                          %! scaling time signatures
            s1 * 9/4
            % [Global Context measure 21]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \tempo 4=48
            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            ^ \markup {
              \huge
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #1 #"48"
                  \hspace #1
                  \upright [
                  \abjad-metric-modulation #2 #0 #3 #0 #'(0.6 . 0.6)
                  \hspace #0.5
                  \upright ]
              }
            }
            % [Global Context measure 22]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 9/4                                                          %! scaling time signatures
            s1 * 9/4
            % [Global Context measure 23]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 7/4                                                          %! scaling time signatures
            s1 * 7/4
            % [Global Context measure 24]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 2/4                                                          %! scaling time signatures
            s1 * 1/2
            % [Global Context measure 25]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 26]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 27]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 28]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 6/4                                                          %! scaling time signatures
            s1 * 3/2
            % [Global Context measure 29]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 9/4                                                          %! scaling time signatures
            s1 * 9/4
            % [Global Context measure 30]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 31]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 9/4                                                          %! scaling time signatures
            s1 * 9/4
            % [Global Context measure 32]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 7/4                                                          %! scaling time signatures
            s1 * 7/4
            % [Global Context measure 33]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 2/4                                                          %! scaling time signatures
            s1 * 1/2
            % [Global Context measure 34]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 35]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 36]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 37]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 6/4                                                          %! scaling time signatures
            s1 * 3/2
            % [Global Context measure 38]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \tempo 4=105
            \time 9/4                                                          %! scaling time signatures
            s1 * 9/4
            ^ \markup {
              \huge
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #1 #"105"
              }
            }
            % [Global Context measure 39]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 40]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 9/4                                                          %! scaling time signatures
            s1 * 9/4
            % [Global Context measure 41]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 7/4                                                          %! scaling time signatures
            s1 * 7/4
            % [Global Context measure 42]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 2/4                                                          %! scaling time signatures
            s1 * 1/2
            % [Global Context measure 43]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 44]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 45]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 46]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 6/4                                                          %! scaling time signatures
            s1 * 3/2
            % [Global Context measure 47]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 9/4                                                          %! scaling time signatures
            s1 * 9/4
            % [Global Context measure 48]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 49]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 9/4                                                          %! scaling time signatures
            s1 * 9/4
            % [Global Context measure 50]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 7/4                                                          %! scaling time signatures
            s1 * 7/4
            % [Global Context measure 51]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 2/4                                                          %! scaling time signatures
            s1 * 1/2
            % [Global Context measure 52]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 53]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \once \override Score.TimeSignature.stencil = ##f                  %! applying ending skips
            \time 1/8                                                          %! scaling time signatures
            s1 * 1/8

        }

        \context StaffGroup = "Staff Group"
        <<

            \tag #'voice1
            {

                \context Staff = "Staff 1"
                {

                    \context Voice = "Voice 1"
                    {
                        % [Voice 1 measure 1]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \set Staff.instrumentName =                            %! applying staff names and clefs
                        \scordatura                                            %! applying staff names and clefs
                        \clef "bass"
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        bf1
                        \pp
                        \<
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright
                            IV \hspace #0.5 }
                        - \tweak bound-details.right.padding 3
                        - \tweak staff-padding #4.5
                        \startTextSpan

                        \pitchedTrill
                        af2
                        \startTrillSpan bf

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 5) "4")
                        \times 5/4 {
                            % [Voice 1 measure 2]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            d2
                            \mp
                            \glissando
                            \stopTrillSpan

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            c2
                            \p
                            \<

                        }

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        e4

                        \tweak NoteHead.style #'triangle
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        gf4
                        \glissando

                        \tweak NoteHead.style #'triangle
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-quarter-sharp-markup
                        f'4
                        \glissando

                        \clef "tenorvarC"
                        \tweak NoteHead.style #'triangle
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-quarter-flat-markup
                        bf'4
                        \mf

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "4.")
                        \times 2/3 {
                            % [Voice 1 measure 3]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \clef "bass"
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                e,
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                g,
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                d
                            >4
                            \ff
                            ^ \markup {
                                \upright
                                    \center-column
                                        {
                                            II
                                            III
                                            IV
                                        }
                                }
                            \>
                            \stopTextSpan

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            d,4
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright
                                IV \hspace #0.5 }
                            - \tweak bound-details.right.padding 3
                            - \tweak staff-padding #4.5
                            \startTextSpan

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            bf,8

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-quarter-flat-markup
                            bf,4

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            c4

                        }
                        % [Voice 1 measure 4]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        df8
                        [

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        ef8
                        ]

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        df4

                        \clef "tenorvarC"
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'4
                        \stopTextSpan
                        ~
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright
                            I \hspace #0.5 }
                        - \tweak bound-details.right.padding 3
                        - \tweak staff-padding #4.5
                        \startTextSpan

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'8
                        \f
                        [

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        b'8
                        \mf
                        \>
                        ]

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 5) "4")
                        \times 5/4 {

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-quarter-flat-markup
                            gf'8
                            [

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            f'8

                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "8")
                            \times 2/3 {

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \one-quarter-sharp-markup
                                f'8

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                c'8

                                \revert Staff.Stem.stemlet-length
                                <
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-natural-markup
                                    e'
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-natural-markup
                                    g'
                                >8
                                ^ \markup {
                                    \upright
                                        \center-column
                                            {
                                                I
                                                II
                                            }
                                    }
                                \stopTextSpan
                                ]

                            }

                            \clef "bass"
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            a,4.
                            \p

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            a8
                            \pp
                            \<

                        }

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 8) "8")
                        \times 8/9 {
                            % [Voice 1 measure 5]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            df8
                            [

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            c8

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            b,8

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            ef8

                            \clef "tenorvarC"
                            \revert Staff.Stem.stemlet-length
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-flat-markup
                                bf'
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text #'\abjad-flat-markup
                                \tweak style #'harmonic
                                df''
                            >8
                            ]
                            \glissando

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            gf'4.

                            \clef "bass"
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-quarter-sharp-markup
                            b,8

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 3) "4")
                        \times 3/4 {

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            b,8
                            [

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-quarter-sharp-markup
                            c8
                            ]

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            f4.
                            \mp

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            ef8
                            \p
                            \<

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            g4

                        }

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "4")
                        \times 2/3 {
                            % [Voice 1 measure 6]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            a8
                            - \accent
                            ^ \markup {
                                \upright
                                    I
                                }
                            [

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            g8
                            ]

                            \clef "treble"
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            gf''4

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-quarter-sharp-markup
                            e''8
                            [

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            e''8
                            ]

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) "8")
                        \times 6/5 {
                            % [Voice 1 measure 7]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            af'8
                            [

                            \pitchedTrill
                            df''8
                            ^ \markup {
                                \upright
                                    I
                                }
                            \startTrillSpan af''

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            bf'8
                            \stopTrillSpan

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-quarter-sharp-markup
                            e''8
                            ^ \markup {
                                \upright
                                    I
                                }

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-quarter-sharp-markup
                            b8
                            \mf
                            ]

                        }
                        % [Voice 1 measure 8]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        c'4
                        \ff
                        \>

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        bf4

                        \clef "bass"
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        gf4

                        \pitchedTrill
                        \tweak style #'harmonic-mixed
                        af4
                        \startTrillSpan e'

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 5) "4")
                        \times 5/4 {
                            % [Voice 1 measure 9]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            d'2
                            \f
                            \stopTrillSpan

                            \clef "treble"
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            e''4
                            \mf
                            \>
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright
                                sv. \hspace #0.5 }
                            - \tweak bound-details.right.padding 3
                            - \tweak staff-padding #4.5
                            \startTextSpan

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            f'4

                        }
                        % [Voice 1 measure 10]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \clef "bass"
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        gf,1
                        \p
                        \stopTextSpan
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright
                            IV \hspace #0.5 }
                        - \tweak bound-details.right.padding 3
                        - \tweak staff-padding #4.5
                        \startTextSpan

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        g,2
                        \pp

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 5) "4")
                        \times 5/4 {
                            % [Voice 1 measure 11]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            ef2
                            \mp
                            ^ \markup {
                                \upright
                                    III
                                }
                            \>
                            \stopTextSpan

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            d,2
                            \p
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright
                                IV \hspace #0.5 }
                            - \tweak bound-details.right.padding 3
                            - \tweak staff-padding #4.5
                            \startTextSpan

                        }

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        c,4
                        \mf
                        \<

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        bf4
                        ^ \markup {
                            \upright
                                III
                            }
                        \stopTextSpan

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        g4
                        \glissando

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        ef4
                        % [Voice 1 measure 12]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        f,2.
                        :32
                        ^ \markup {
                            \upright
                                "sempre IV"
                            }
                        ^ \markup {
                            \upright
                                XFB.
                            }
                        ~
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \upright
                            sp. \hspace #0.5 }
                        - \tweak bound-details.right.padding 1.5
                        - \tweak staff-padding #6
                        \startTextSpan
                        % [Voice 1 measure 13]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        f,1
                        :32
                        ^ \markup {
                            \upright
                                TO.
                            }
                        \stopTextSpan
                        ~
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \upright
                            ord. \hspace #0.5 }
                        - \tweak bound-details.right.padding 1.5
                        - \tweak staff-padding #6
                        \startTextSpan

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 10) "8")
                        \times 10/9 {

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            f,8
                            :32
                            \ff
                            \stopTextSpan
                            \glissando                                         %! abjad.glissando(7)
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright
                                st. \hspace #0.5 }
                            - \tweak bound-details.right.padding 1.5
                            - \tweak staff-padding #6
                            \startTextSpan

                            \tweak NoteHead.style #'harmonic-mixed
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            gf4
                            :32
                            \f
                            \>
                            \glissando                                         %! abjad.glissando(7)

                            \tweak NoteHead.style #'harmonic-mixed
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            bf,2
                            :32
                            \mf
                            ^ \markup {
                                \upright
                                    IT.
                                }
                            \glissando                                         %! abjad.glissando(7)

                            \tweak NoteHead.style #'triangle
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            a,4
                            :32
                            \p
                            \>
                            ~

                        }
                        % [Voice 1 measure 14]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak NoteHead.style #'triangle
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,1
                        :32
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        af,2.
                        :32
                        ^ \markup {
                            \upright
                                XFB.
                            }
                        ~
                        % [Voice 1 measure 15]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        af,4
                        :32
                        \pp
                        - \accent
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        g4
                        :32
                        \mp
                        - \accent
                        \>
                        ~

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 3) "4")
                        \times 3/4 {
                            % [Voice 1 measure 16]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            g4
                            :32
                            - \accent
                            \glissando                                         %! abjad.glissando(7)

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            f2.
                            :32
                            - \accent
                            ~

                        }
                        % [Voice 1 measure 17]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        f2
                        :32
                        \p
                        - \accent
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        g2
                        :32
                        \mf
                        \<
                        \stopTextSpan
                        ~
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \upright
                            sp. \hspace #0.5 }
                        - \tweak bound-details.right.padding 1.5
                        - \tweak staff-padding #6
                        \startTextSpan

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 10) "8")
                        \times 10/9 {
                            % [Voice 1 measure 18]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            g4.
                            :32
                            \glissando                                         %! abjad.glissando(7)

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            b,2.
                            :32
                            \ff
                            \stopTextSpan
                            \glissando                                         %! abjad.glissando(7)
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright
                                ord. \hspace #0.5 }
                            - \tweak bound-details.right.padding 1.5
                            - \tweak staff-padding #6
                            \startTextSpan

                        }
                        % [Voice 1 measure 19]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,2.
                        :32
                        \f
                        ^ \markup {
                            \upright
                                IT.
                            }
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        df2.
                        :32
                        \mf
                        - \accent
                        \>
                        \stopTextSpan
                        ~
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright
                            st. \hspace #0.5 }
                        - \tweak bound-details.right.padding 3
                        - \tweak staff-padding #6
                        \startTextSpan
                        % [Voice 1 measure 20]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        df2
                        :32
                        \p
                        - \accent
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        ef1
                        :32
                        \pp
                        - \accent
                        \<
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-quarter-sharp-markup
                        d2.
                        :32
                        \mp
                        - \accent
                        \glissando                                             %! abjad.glissando(7)

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "4.")
                        \times 2/3 {
                            % [Voice 1 measure 21]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \tweak NoteHead.style #'harmonic-mixed
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-quarter-sharp-markup
                            g4
                            \p
                            ^ \markup {
                                \upright
                                    "accel. a 38"
                                }
                            ^ \markup {
                                \upright
                                    II
                                }
                            \<
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright
                                sv. \hspace #0.5 }
                            - \tweak bound-details.right.padding 3
                            - \tweak staff-padding #4.5
                            \startTextSpan

                            \tweak NoteHead.style #'harmonic-mixed
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            df4

                            \tweak NoteHead.style #'harmonic-mixed
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            e'8

                            \clef "tenorvarC"
                            \tweak NoteHead.style #'harmonic-mixed
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            b'4

                            \tweak NoteHead.style #'harmonic-mixed
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            b4

                        }
                        % [Voice 1 measure 22]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak NoteHead.style #'triangle
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        g'8
                        \stopTextSpan
                        [

                        \revert Staff.Stem.stemlet-length
                        \tweak NoteHead.style #'triangle
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-quarter-sharp-markup
                        g'8
                        ]

                        \tweak NoteHead.style #'triangle
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'4

                        \tweak NoteHead.style #'triangle
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        bf'4
                        ~

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak NoteHead.style #'triangle
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        bf'8
                        \mf
                        [

                        \revert Staff.Stem.stemlet-length
                        \tweak NoteHead.style #'triangle
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        c''8
                        \ff
                        \>
                        ]

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 5) "4")
                        \times 5/4 {

                            \clef "bass"
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            bf,8
                            \stopTextSpan
                            [

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            gf8

                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "8")
                            \times 2/3 {

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-flat-markup
                                af8

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \one-quarter-flat-markup
                                ef8

                                \revert Staff.Stem.stemlet-length
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                d8
                                ]

                            }

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-quarter-sharp-markup
                            d'4.
                            \f

                            \pitchedTrill
                            a8
                            \mf
                            \>
                            \startTrillSpan e'

                        }

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 8) "8")
                        \times 8/9 {
                            % [Voice 1 measure 23]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            df'8
                            ^ \markup {
                                \upright
                                    II
                                }
                            [
                            \stopTrillSpan

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            gf'8
                            ^ \markup {
                                \upright
                                    I
                                }

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            d'8
                            ^ \markup {
                                \upright
                                    II
                                }

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            ef'8

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            e'8
                            ]

                            \clef "tenorvarC"
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            c''4.
                            \p
                            ^ \markup {
                                \upright
                                    I
                                }

                            \pitchedTrill
                            c'8
                            \pp
                            ^ \markup {
                                \upright
                                    "II  "
                                }
                            \<
                            \startTrillSpan g'

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 3) "4")
                        \times 3/4 {

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            bf'8
                            ^ \markup {
                                \upright
                                    I
                                }
                            [
                            \stopTrillSpan

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            ef8
                            ^ \markup {
                                \upright
                                    IV
                                }
                            ]

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-quarter-flat-markup
                            af4.

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            af8

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-quarter-sharp-markup
                            a4

                        }

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "4")
                        \times 2/3 {
                            % [Voice 1 measure 24]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            d'8
                            [

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            c'8
                            ]

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            e'4
                            \mp

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            gf'8
                            \p
                            \<
                            [

                            \clef "bass"
                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            e,8
                            ]

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) "8")
                        \times 6/5 {
                            % [Voice 1 measure 25]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            ef8
                            [

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-quarter-flat-markup
                            df8

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            df8

                            \pitchedTrill
                            f,8
                            \startTrillSpan f

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            bf8
                            ]
                            \stopTrillSpan

                        }
                        % [Voice 1 measure 26]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak NoteHead.style #'triangle
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        g4
                        :32

                        \tweak NoteHead.style #'default
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-quarter-flat-markup
                        df'4
                        :32
                        \mf

                        \clef "tenorvarC"
                        \tweak NoteHead.style #'default
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-quarter-flat-markup
                        af'4
                        :32
                        \ff
                        \>
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright
                            I \hspace #0.5 }
                        - \tweak bound-details.right.padding 3
                        - \tweak staff-padding #4.5
                        \startTextSpan

                        \tweak NoteHead.style #'harmonic-mixed
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'4
                        :32

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 5) "4")
                        \times 5/4 {
                            % [Voice 1 measure 27]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \tweak NoteHead.style #'harmonic-mixed
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            g'2
                            :32

                            \pitchedTrill
                            \tweak NoteHead.style #'triangle
                            ef'4
                            :32
                            \startTrillSpan f'

                            \clef "treble"
                            \tweak NoteHead.style #'default
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            df''4
                            :32
                            \f
                            \stopTrillSpan

                        }
                        % [Voice 1 measure 28]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak NoteHead.style #'triangle
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        b'1
                        :32
                        \mf
                        \>

                        \tweak NoteHead.style #'harmonic-mixed
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        df''2
                        :32

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 5) "4")
                        \times 5/4 {
                            % [Voice 1 measure 29]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \tweak NoteHead.style #'triangle
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            bf2
                            :32
                            \p
                            ^ \markup {
                                \upright
                                    II
                                }
                            \stopTextSpan

                            \tweak NoteHead.style #'harmonic-mixed
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            df'2
                            :32
                            \pp
                            \<

                        }

                        \tweak NoteHead.style #'harmonic-mixed
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        df'4
                        :32

                        \tweak NoteHead.style #'harmonic-mixed
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        b4
                        :32

                        \tweak NoteHead.style #'harmonic-mixed
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        df'4
                        :32

                        \clef "bass"
                        \tweak NoteHead.style #'default
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        f4
                        :32
                        \mp

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "4.")
                        \times 2/3 {
                            % [Voice 1 measure 30]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \tweak NoteHead.style #'default
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            ef'4
                            :32
                            \p
                            \<

                            \clef "tenorvarC"
                            \tweak NoteHead.style #'triangle
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            g'4
                            :32
                            ^ \markup {
                                \upright
                                    I
                                }

                            \clef "bass"
                            \tweak NoteHead.style #'triangle
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            a,8
                            :32

                            \tweak NoteHead.style #'triangle
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-quarter-flat-markup
                            af,4
                            :32

                            \pitchedTrill
                            \tweak NoteHead.style #'harmonic-mixed
                            g,4
                            :32
                            \startTrillSpan df

                        }
                        % [Voice 1 measure 31]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak NoteHead.style #'harmonic-mixed
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        bf,8
                        :32
                        [
                        \stopTrillSpan

                        \revert Staff.Stem.stemlet-length
                        \tweak NoteHead.style #'triangle
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        f8
                        :32
                        ]

                        \tweak NoteHead.style #'harmonic-mixed
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        f4
                        :32

                        \tweak NoteHead.style #'harmonic-mixed
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        df'4
                        :32
                        ~

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak NoteHead.style #'harmonic-mixed
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        df'8
                        :32
                        \mf
                        [

                        \revert Staff.Stem.stemlet-length
                        \tweak NoteHead.style #'harmonic-mixed
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-quarter-flat-markup
                        df'8
                        :32
                        \ff
                        \>
                        ]

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 5) "4")
                        \times 5/4 {

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak NoteHead.style #'harmonic-mixed
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            ef8
                            :32
                            [

                            \pitchedTrill
                            \tweak NoteHead.style #'harmonic-mixed
                            e,8
                            :32
                            \startTrillSpan gf,

                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "8")
                            \times 2/3 {

                                \tweak NoteHead.style #'triangle
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                e,8
                                :32
                                \stopTrillSpan

                                \tweak NoteHead.style #'triangle
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                c8
                                :32

                                \revert Staff.Stem.stemlet-length
                                \tweak NoteHead.style #'triangle
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                d8
                                :32
                                ]

                            }

                            \tweak NoteHead.style #'triangle
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-quarter-sharp-markup
                            a,4.
                            :32
                            \f

                            \tweak NoteHead.style #'triangle
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            af,8
                            :32
                            \mf
                            \>

                        }

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 8) "8")
                        \times 8/9 {
                            % [Voice 1 measure 32]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak NoteHead.style #'triangle
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-quarter-flat-markup
                            af,8
                            :32
                            [

                            \tweak NoteHead.style #'default
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            ef,8
                            :32

                            \tweak NoteHead.style #'default
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            bf,8
                            :32

                            \tweak NoteHead.style #'harmonic-mixed
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            g,8
                            :32

                            \revert Staff.Stem.stemlet-length
                            \tweak NoteHead.style #'harmonic-mixed
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            c,8
                            :32
                            ]

                            \tweak NoteHead.style #'triangle
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            c4.
                            :32

                            \tweak NoteHead.style #'default
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            e,8
                            :32

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 3) "4")
                        \times 3/4 {

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak NoteHead.style #'triangle
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            ef,8
                            :32
                            [

                            \revert Staff.Stem.stemlet-length
                            \tweak NoteHead.style #'harmonic-mixed
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            d8
                            :32
                            ]

                            \tweak NoteHead.style #'triangle
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            gf4.
                            :32
                            \p

                            \tweak NoteHead.style #'harmonic-mixed
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            df'8
                            :32
                            \pp
                            \<

                            \tweak NoteHead.style #'harmonic-mixed
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            e'4
                            :32

                        }

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "4")
                        \times 2/3 {
                            % [Voice 1 measure 33]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak NoteHead.style #'harmonic-mixed
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            a8
                            :32
                            [

                            \revert Staff.Stem.stemlet-length
                            \tweak NoteHead.style #'harmonic-mixed
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-quarter-sharp-markup
                            d'8
                            :32
                            ]

                            \clef "treble"
                            \tweak NoteHead.style #'default
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            d''4
                            :32

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak NoteHead.style #'default
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-quarter-flat-markup
                            ef''8
                            :32
                            [

                            \revert Staff.Stem.stemlet-length
                            \tweak NoteHead.style #'triangle
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            af8
                            :32
                            ]

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) "8")
                        \times 6/5 {
                            % [Voice 1 measure 34]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \clef "bass"
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak NoteHead.style #'triangle
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            gf8
                            :32
                            [

                            \tweak NoteHead.style #'triangle
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            bf,8
                            :32

                            \tweak NoteHead.style #'harmonic-mixed
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            c8
                            :32

                            \tweak NoteHead.style #'harmonic-mixed
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            bf,8
                            :32

                            \clef "tenorvarC"
                            \revert Staff.Stem.stemlet-length
                            \tweak NoteHead.style #'triangle
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            a'8
                            :32
                            \mp
                            ]

                        }
                        % [Voice 1 measure 35]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak NoteHead.style #'harmonic-mixed
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-quarter-sharp-markup
                        g'4
                        :32
                        \p
                        \<

                        \tweak NoteHead.style #'harmonic-mixed
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        g'4
                        :32

                        \tweak NoteHead.style #'harmonic-mixed
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        b'4
                        :32

                        \clef "treble"
                        \tweak NoteHead.style #'harmonic-mixed
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        b''4
                        :32

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 5) "4")
                        \times 5/4 {
                            % [Voice 1 measure 36]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \tweak NoteHead.style #'harmonic-mixed
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            e''2
                            :32
                            \mf

                            \tweak NoteHead.style #'triangle
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            df''4
                            :32
                            \ff
                            \>

                            \tweak NoteHead.style #'triangle
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-quarter-sharp-markup
                            g''4
                            :32

                        }
                        % [Voice 1 measure 37]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak NoteHead.style #'triangle
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-quarter-sharp-markup
                        d''1
                        :32
                        \f

                        \tweak NoteHead.style #'triangle
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        ef''2
                        :32
                        \mf

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 5) "4")
                        \times 5/6 {
                            % [Voice 1 measure 38]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            df'2
                            \p
                            \>
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright
                                clt. \hspace #0.5 }
                            - \tweak bound-details.right.padding 3
                            - \tweak staff-padding #4.5
                            \startTextSpan

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            a1
                            \pp

                        }

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        b1
                        \mp
                        \>
                        % [Voice 1 measure 39]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        g'2.
                        ~
                        % [Voice 1 measure 40]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        g'2.
                        \p

                        \pitchedTrill
                        f'4
                        \mf
                        \<
                        ~
                        \startTrillSpan g'

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 5) "4")
                        \times 5/6 {

                            f'2

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            af1
                            ~
                            \stopTrillSpan

                        }
                        % [Voice 1 measure 41]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        af2
                        \ff

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'4
                        \f
                        \>
                        \stopTextSpan
                        ~
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright
                            I \hspace #0.5 }
                        - \tweak bound-details.right.padding 3
                        - \tweak staff-padding #4.5
                        \startTextSpan

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'2.
                        \mf

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        bf'4
                        \p
                        \>
                        ~
                        % [Voice 1 measure 42]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        bf'2
                        ~
                        % [Voice 1 measure 43]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        bf'2.
                        \pp
                        % [Voice 1 measure 44]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \clef "bass"
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        gf2
                        \mp
                        \>
                        \stopTextSpan

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        f,2
                        ~
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright
                            IV \hspace #0.5 }
                        - \tweak bound-details.right.padding 3
                        - \tweak staff-padding #4.5
                        \startTextSpan

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 5) "4")
                        \times 5/4 {
                            % [Voice 1 measure 45]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            f,2
                            \p

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            ef,2
                            \mf
                            \<
                            ~

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) "4")
                        \times 6/5 {
                            % [Voice 1 measure 46]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            ef,4

                            \pitchedTrill
                            bf,2.
                            \ff
                            \glissando
                            \startTrillSpan df

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            gf,4
                            \f
                            \>
                            \stopTrillSpan

                        }
                        % [Voice 1 measure 47]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        af1.
                        \mf
                        ^ \markup {
                            \upright
                                "accel. al fino"
                            }
                        \stopTextSpan

                        \clef "tenorvarC"
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'2.
                        \p
                        ^ \markup {
                            \upright
                                I
                            }
                        \>
                        ~
                        % [Voice 1 measure 48]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'4
                        ~

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'8
                        \pp
                        [

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        df'8
                        \mp
                        ^ \markup {
                            \upright
                                II
                            }
                        \>
                        ~
                        ]

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        df'4
                        ~

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "2")
                        \times 2/3 {
                            % [Voice 1 measure 49]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            df'1
                            ~

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            df'4
                            \p

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            c''4
                            \mf
                            ^ \markup {
                                \upright
                                    "I al fino"
                                }
                            \<
                            ~

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 5) "4")
                        \times 5/4 {

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            c''2

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            b'2
                            ~

                        }
                        % [Voice 1 measure 50]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        b'2
                        \ff

                        \clef "treble"
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        bf''2.
                        \f

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        af''2
                        \ff
                        ^ \markup {
                            \upright
                                "scratch al fino"
                            }
                        - \tweak stencil #abjad-flared-hairpin
                        \<
                        ~
                        % [Voice 1 measure 51]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        af''2
                        ~
                        % [Voice 1 measure 52]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        af''4
                        ~

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        af''8
                        [

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        bf''8
                        ~
                        ]

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        bf''4
                        \fff
                        \!
                        \once \override Staff.TimeSignature.color = #white
                        % [Voice 1 measure 53]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff %! applying ending skips
                        \once \override Rest.color = #white                    %! applying ending skips
                        r1 * 1/16
                        _ \markup {
                            \override #'(font-name . "STIXGeneral")
                            \with-color #white
                            \right-column {
                                \line { "\hspace #0.75 ............" }
                                \with-color #black
                                \line { \hspace #0.75 Iowa City, Ia. }
                                \with-color #black
                                \line { \hspace #0.75 September 2020 }
                            }
                        }

                        \once \override MultiMeasureRest.color = #white        %! applying ending skips
                        R1 * 1/16
                        ^ \markup {                                            %! applying ending skips
                            \musicglyph                                        %! applying ending skips
                                #"scripts.ushortfermata"                       %! applying ending skips
                            }                                                  %! applying ending skips
                        \bar "|."
                        \stopStaff                                             %! applying ending skips

                    }

                }

            }

        >>

    >>
}                                                                              %! abjad.LilyPondFile._get_formatted_blocks()