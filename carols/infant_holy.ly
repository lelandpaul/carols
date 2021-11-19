\header {
  poet = "trans. Edith M.G. Reed"
  title = "Infant Holy, Infant Lowly"
  composer = "Trad. Polish"
  enteredby = "Maia McCormick"
  maintainer = "Maia McCormick"
  maintainerEmail = "maia.mcc@gmail.com"
  lastupdated = "2021/Nov/17"
}

\version "2.14.2"
\include "header.ly"

global= {
  \preamble
  \time 3/4
  \key g \major
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
}

sop = \context Voice = "sop" \relative c' {
  \voiceOne
  \partial 4 \repeat unfold 2 { d8 d |
  g4 g fis8 g | a4 a b8 c |
  d4 c b8 a | g2 \bar"" } g8 fis |

  e4 e a8 g | fis4 fis \bar"" b8 a |
  g4 g c8 b | a4 a \bar"" \repeat unfold 2 { b8 c |

  d4 c b8 a | g2 }
  \bar "|."
}

alto=\context Voice = "alto" \relative c' {
  \voiceTwo
  \partial 4 \repeat unfold 2 { d8 d |
  d4 d d8 d | d4 d fis8 fis |
  g4 g fis8 fis | d2 } d8 d |

  d4 c e8 e | e4 d fis8 fis |
  fis4 e e8 e | d4 d d8 d |
  g4 e dis8 fis | fis4( e) fis8 fis |
  g4 g fis8 fis d2
  \bar "|."

}

tenor = \context Voice = "tenor" \relative c' {
  \voiceOne
  \partial 4 \repeat unfold 2 { d8 d |
  b4 b c8 b | c4 c d8 d |
  d4 e d8 c | c4( b) } g8 g |

  g4 g a8 a | a4 a b8 b |
  b4 b g8 g | g4 fis fis8 fis |
  b4 a8( g) fis b | b2 d8 d |
  d4 e d8 c | c4 b
  \bar "|."

}

bass = \context Voice = "bass" \relative c {
  \voiceTwo
  \partial 4 \repeat unfold 2 { d8 d |
  g4 g a8 g | g4 fis8( e) d8 c |
  b4 c d8 d | g2 } b,8 b |

  c4 c cis8 cis | d4 d dis8 dis |
  e4 d c8 cis | d4. c8 b8 a |
  g4 a b8 dis | e2 d8 c |
  b4 c d8 d | << g2 g2 >>
  \bar "|."

}

stanzaa = \lyricmode {
  In -- fant ho -- ly, in -- fant low -- ly,
  for His bed a cat -- tle stall;
  Ox -- en low -- ing, lit -- tle know -- ing
  Christ the Babe is Lord of all.

  Swift are wing -- ing an -- gels sing -- ing,
  no -- els ring -- ing, tid -- ings bring -- ing:
  Christ the Babe is Lord of all, __
  Christ the Babe is Lord of all.
}

stanzab = \lyricmode {
  Flocks were sleep -- ing. Shep -- herds keep -- ing
  vig -- il til the morn -- ing new
  Saw the glo -- ry, heard the sto -- ry,
  tid -- ings of a gos -- pel true.

  Thus re -- joic -- ing, free from sor -- row,
  prais -- es voic -- ing, greet the mor -- row:
  Christ the Babe was born for you, __
  Christ the Babe was born for you.
}

\score {
  \context ChoirStaff <<
    \unset ChoirStaff.melismaBusyProperties
    \context Staff ="upper"  { \clef "G" <<
      \global
      \sop
      \alto
    >>}

    \lyricsto "sop" \context Lyrics = "stanza-1" \with {
        \override VerticalAxisGroup.
        nonstaff-relatedstaff-spacing.padding = #1.2
    } {
      \set stanza = "1."
      \stanzaa }
    \lyricsto "sop" \context Lyrics = "stanza-2" {
      \set stanza = "2."
      \stanzab }

    \context Staff = "lower"  { \clef "F"<<
      \global
      \tenor
      \bass
    >>}
  >>
}
