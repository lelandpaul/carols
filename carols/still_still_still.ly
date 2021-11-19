\header {
  filename = "still_still_still.ly"
  enteredby = "Maia McCormick"
  composer = "Austrian trad."
  arranger = "Rod Mather"
  poet = "Georg Gotsch"
  meter = "trans. George K. Evans"
  title = "Still, Still Still"
  maintainer = "Maia McCormick"
  maintainerEmail = "maia.mcc@gmail.com"
  lastupdated = "2019/Nov/17"
}

\version "2.14.2"

\include "header.ly"

global= {
  \time 2/2
  \key d \major
}

sop = \context Voice = "sop"    {
  \voiceOne
  \relative c'' {
    a4( d) fis,( a) | d,2. d8( fis) |
    e4 e8( g) cis,4 cis8( e) | d2. fis4 |

    \repeat unfold 2 {
      e e8( fis) g4 e | fis fis8( g) a4 fis |
    }

    a4( d) fis,( a) | d,2. d8( fis) |
    e4 e8( g) cis,4 cis8( e) | d1 \bar "|."
  }
}

alto=\context Voice = "alto"   {
  \voiceTwo
  \relative c' {
    fis2 cis | cis b |
    b4 b b a | a2. d4 |

    \repeat unfold 2 {
      cis cis8( d) e4 cis | d d8( e) fis4 d |
    }

    fis2 cis | cis b |
    b4 b b a | a1 \bar "|."
  }
}

tenor = \context Voice = "tenor"   {
  \voiceOne
  \relative c' {
    a2 a4( g) | fis2 fis |
    g4 g g g | fis2. a4 |

    \repeat unfold 2 {
      a g e a | a a a a |
    }

    a2 a4( g) | fis2 fis |
    g4 g g g | g2( fis) \bar "|."
  }
}

bass = \context Voice = "bass"   {
  \voiceTwo
    \relative c {
    d2 a | b a4( a') |
    g4 fis e a, | d2. d4 |

    a a a a | d a fis d' |
    a a a a | d a fis a |

    d2 a | b a4( a') |
    g4 fis e a, | d1 \bar "|."
  }
}

stanzaa = \lyricmode {
  Still, still, still,
  weil's Kind -- lein schlaf -- en will.

  Ma -- ri -- a tut es nie -- der sing -- en,
  ih -- re groß -- e Lieb dar -- bring -- en.

  Still, still, still,
  weil's Kind -- lein schlaf -- en will.
}

stanzab = \lyricmode {
  Schlaf, schlaf, schlaf,
  mein lie -- bes Kind -- lein, schlaf!

  Die En -- gel tun schön mu -- si -- zie -- ren,
  bei dem Kind -- lein ju -- bi -- lie -- ren.

  Schlaf, schlaf, schlaf,
  mein lie -- bes Kind -- lein, schlaf!
}

stanzac = \lyricmode {
  Groß, groß, groß,
  die Lieb ist ü -- ber -- groß!

  Gott hat den Him -- mels -- thron ver -- las -- sen
  Und muss rei -- sen auf der Straß -- en.

  Groß, groß, groß,
  die Lieb ist ü -- ber -- groß!
}

verses = \markup{
  \fill-line {
    \column{
      \line { \huge \bold "English - Verse 1:" }
      \line{ \huge "Still, still, still, "}
      \line { \huge "He sleeps this night so chill." }
      \line{ \huge "The Virgin's tender " }
      \line { \huge "      arms enfolding," }
      \line{ \huge "Warm and safe " }
      \line { \huge "      the Child are holding." }
      \line{ \huge "Still, still, still, "}
      \line { \huge "He sleeps this night so chill." }
    }
    \column{
      \line { \huge \bold "Verse 2:" }
      \line { \huge "Sleep, sleep, sleep, "}
      \line { \huge "He lies in slumber deep." }
      \line { \huge "While angel hosts " }
      \line { \huge "      from heav'n come winging," }
      \line { \huge "Sweetest songs " }
      \line { \huge "      of joy are singing." }
      \line { \huge "Sleep, sleep, sleep, "}
      \line { \huge "He lies in slumber deep." }



    }
  }
}

\score {	\transpose d es
  \context ChoirStaff <<
    \unset ChoirStaff.melismaBusyProperties
    \context Staff ="upper"  { \clef "G" <<
      \global
      \sop
      \alto
    >>}

    \lyricsto "alto" \context Lyrics = "stanza-1" {
      \set stanza = "1."
      \stanzaa }
    \lyricsto "alto" \context Lyrics = "stanza-2" {
      \set stanza = "2."
      \stanzab }
    \lyricsto "alto" \context Lyrics = "stanza-3" {
      \set stanza = "3."
      \stanzac }

    \context Staff = "lower"  { \clef "F"<<
      \global
      \tenor
      \bass
    >>}

  >>
  \layout {
    indent = 0.0\pt
    \context {
      \ChordNames
      \override ChordName  #'style = #'american
      chordChanges = ##t
    }
    \context {
      \Staff
      \remove Time_signature_engraver
    }
  }
}
\verses
