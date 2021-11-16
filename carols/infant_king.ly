\header {
  filename = "infant_king.ly"
  enteredby = "Maia McCormick"
  composer = "Trad. Basque"
  arranger = "arr. Edgar Pettman"
  poet = "trans. Sabine Baring-Gould (1834-1924)"
  title = "The Infant King"
  maintainer = "Maia McCormick"
  maintainerEmail = "maia.mcc@gmail.com"
  lastupdated = "2021/Nov/15"
}

\version "2.14.2"

\include "header.ly"

global= {
  \key f \major
  \time 6/8
}

sop = \context Voice = "sop" {
  \relative c' {
    \voiceOne
    f8 g e f4. |
    g8 a bes c4 d8 | c4 bes8 a8( g) a | \break
    f g e f4. |

    % Hush, do not wake...
    bes8 a bes g4 c8 | b( c) d c4. |
    c8 d e f4 c8 | d4 bes8 c4 a8 |
    c bes a g4 a8 | \break f( g) a g4. |
    c,4. f ~ f8 g e f4. \bar".||"
  }
}

alto=\context Voice = "alto"   {
  \relative c' {
    \voiceTwo
    c8 d bes c4. |
    c8 f f e4 f8 | f4 f16( g) f8( e) e |
    d d c c4. |

    % Hush, do not wake...
    f8 e f e4 g8 | f4 f8 e4. |
    f8 f g f4 f8 | f4 g8 e4 f8 |
    g8 g f e4 e8 | d4 e8 d4. |
    g, r | c8 d c c4. \bar".||"

  }
}

tenor = \context Voice = "tenor"   {
  \relative c' {
    \voiceOne
    a8 bes g a4. |
    c8 c f, g4 bes8 | c4 d16( c) c4 c8 |
    a8 bes g a4. |

    % Hush, do not wake...
    bes8 c d c4 c8 | d( c) b c4. |
    c8 bes bes c4 c8 | bes4 d8 c4 c8 |
    c8 c c c4 a8 | a4 a8 bes4. |
    e, s | c'8 bes g a4. \bar".||"
  }

}

bass = \context Voice = "bass"   {
  \relative c {
    \voiceTwo
    f8 f f f4. |
    e8 f d c4 bes8 | a4 d16( e) f8 c a |
    d bes c f4. |

    % Hush, do not wake...
    d8 c bes c4 e8 | d4 g8 c,8( c' bes!) |
    a bes g a4 a8 | bes4 g8 a4 f8 |
    e e f c4 c8 | d4 c8 bes4. |
    e r | a,8 bes c <<c4. f,4.>>  \bar".||"
  }
}
accomp=\chordmode {

}
stanzaa = \lyricmode {
  Sing lul -- la -- by!
  Lul -- la -- by ba -- by,
  now re -- clin -- ing,
  Sing lul -- la -- by!

  Hush, do not wake the
  In -- fant King.
  An -- gels are watch -- ing,
  stars are shin -- ing
  O -- ver the place where
  He is ly -- ing:
  Sing lul -- la -- by!
}

stanzab = \lyricmode {
  Sing lul -- la -- by!
  Lul -- la -- by ba -- by,
  now a -- sleep -- ing,
  Sing lul -- la -- by!

  Hush, do not wake the
  In -- fant King.
  Soon will come sor -- row
  with the morn -- ing,
  Soon will come bit -- ter
  grief and weep -- ing:
  Sing lul -- la -- by!
}
stanzac = \lyricmode {
  Sing lul -- la -- by!
  Lul -- la -- by ba -- by,
  now a -- doz -- ing,
  Sing lul -- la -- by!

  Hush, do not wake the
  In -- fant King.
  Soon comes the cross,
  the nails, the pierc -- ing,
  Then in the grave
  at last re -- pos -- ing:
  Sing lul -- la -- by!
}
stanzad = \lyricmode {
  Sing lul -- la -- by!
  Lul -- la -- by! is the
  babe a -- wak -- ing?
  Sing lul -- la -- by!

  Hush, do not stir the
  In -- fant King.
  Dream -- ing of East -- er,
  glad -- some morn -- ing.
  Con -- quer -- ing Death, its
  bond -- age break -- ing:
  Sing lul -- la -- by!
}
stanzae = \lyricmode {

}
stanzaf = \lyricmode {

}

wordsTop = \lyricmode {
  \repeat unfold 43 { \skip 1 }
  Sing __ lul -- la -- by!
}


\score {	%\transpose g f
  \context ChoirStaff <<
    \context ChordNames \accomp
    \unset ChoirStaff.melismaBusyProperties
    \context Staff ="upper"  { \clef "G" <<
      \global
      \sop
      \alto
    >>}

    \lyricsto "sop" \context Lyrics = "top" \with {
      alignAboveContext = "upper"
      \override VerticalAxisGroup.
        nonstaff-relatedstaff-spacing.padding = #0.5
    } { \wordsTop }

    \lyricsto "alto" \context Lyrics = "stanza-1" {
      \set stanza = "1."
      \stanzaa }
    \lyricsto "alto" \context Lyrics = "stanza-2" {
      \set stanza = "2."
      \stanzab }
    \lyricsto "alto" \context Lyrics = "stanza-3" {
      \set stanza = "3."
      \stanzac }
  	\lyricsto "alto" \context Lyrics = "stanza-4" {
  		\set stanza = "4."
  			\stanzad }
                                %	\lyricsto "sop" \context Lyrics = "stanza-5" {
                                %		\set stanza = "5."
                                %			\stanzae }
                                %	\lyricsto "sop" \context Lyrics = "stanza-6" {
                                %		\set stanza = "6."
                                %			\stanzaf }
    \context Staff = "lower"  { \clef "F"<<
      \global
      \tenor
      \bass
    >>}
  >>
}

