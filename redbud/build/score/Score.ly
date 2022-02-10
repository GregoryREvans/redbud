\version "2.19.84"  %! LilyPondFile
\language "english" %! LilyPondFile

\include "../measured_stylesheet.ily"   
\include "/Users/gregoryevans/abjad/docs/source/_stylesheets/abjad.ily" %! LilyPondFile
\include "/Users/gregoryevans/evans/lilypond/evans-articulations.ily"

\header { %! LilyPondFile
    tagline = ##f
} %! LilyPondFile

\score{
    {
    \include "segment_01.ly"
	}
%\midi{}
}
