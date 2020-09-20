\version "2.19.84"  %! LilyPondFile
\language "english" %! LilyPondFile

\include "../measured_stylesheet.ily"   
\include "/Users/evansdsg2/abjad/docs/source/_stylesheets/abjad.ily" %! LilyPondFile
\include "/Users/evansdsg2/evans/lilypond/evans-articulations.ily"

\header { %! LilyPondFile
    tagline = ##f
} %! LilyPondFile

\score{
    {
    \include "segment_01.ly"
	}
%\midi{}
}
