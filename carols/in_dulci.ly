\version "2.14.2"

\include "header.ly"

\header {
  title = "In dulci jubilo"
  poet = "Heinrich Seuse (1300–1366)"
  meter = "trans. Robert Lucas Pearsall"
  composer = "14th Century German Melody"
  arranger = "arr. Robert Lucas Pearsall"
  maintainer = "Maia McCormick"
  maintainerEmail = "maia.mcc@gmail.com"
  lastupdated = "2017/Dec/01"
}

global = {
  \preamble
  \key f \major
  \time 6/4
}

sopMusic = \relative c' {
  \partial 4 f4 |
  f2 f4 a2 bes4 |
  c2( d4 c2) c4 |
  f,2 f4 a2 bes4 |
  c2( d4 c2.) |

  c2 d4 c2 bes4 |
  a2. f2 \parenthesize f4 |
  g2 g4 a2 g4 |
  f2( g4 a2) a4 |

  c2 d4 c2 bes4 |
  a2. f2 f4 |
  g2 g4 a2 g4 |
  f2( g4 a2.) |

  d,2 d4 e2 e4 |
  f2.( c'2.) |
  a2 a4 g2 g4 |
  \once \override Staff.TimeSignature.break-visibility = ##(#f #f #f)
  \time 5/4 f2. b2\rest \bar "|."
}
sopWords = \lyricmode {

}

altoMusic = \relative c' {
  c4 |
  d2 c4 f4.( e8) d4 |
  c2( f4 e2) f4 |
  d2 c4 f4.( e8) d4 |
  c2( f4 e2) s4 |

  f2 f4 e2 g4 |
  c,2. d2 \parenthesize f4 |
  f2 f4 e2 e4 |
  f2.~ f2 f4 |

  f2 f4 e2 g4 |
  c,2. f2 f4 |
  f2 f4 f2 e4 |
  f1. |

  d2 d4 d2 cis4 |
  d2.( e) |
  f2 f4 f2 e4
  f2. s2 \bar "|."
}
altoWords = \lyricmode {
  \set stanza = "1. "
  \lyricItal
  In dul -- ci ju -- bi -- lo __
  \lyricNormal
  Let us our hom -- age show __
  Our heart’s joy re -- clin -- eth \skip 1
  \lyricItal
  In præ -- se -- pi -- o, __
  \lyricNormal
  And like a bright star shin -- eth
  \lyricItal
  Ma -- tris in gre -- mi -- o. __
  Al -- pha es et O! __
  Al -- pha es et O!
  \lyricNormal
}
altoWordsII = \lyricmode {
  \set stanza = "2. "
  \lyricItal
  O Je -- su, par -- vu -- le, __
  \lyricNormal
  For thee I long al -- way; __
  Com -- fort my heart’s blind -- ness,
  \lyricItal
  O Pu -- er op -- ti -- me, __
  \lyricNormal
  With all Thy lov -- ing kind -- ness,
  \lyricItal
  O Prin -- ceps glo -- ri -- æ. __
  Tra -- he me post Te! __
  Tra -- he me post Te!
  \lyricNormal
}
altoWordsIII = \lyricmode {
  \set stanza = "3. "
  \lyricItal
  O Pa -- tris ca -- ri -- tas! __
  O na -- ti lem -- i -- tas! __
  \lyricNormal
  Deep -- ly were we stain -- ed
  \lyricItal
  Per nos -- tra cri -- mi -- na; __
  \lyricNormal
  But Thou for us hast gain -- ed
  \lyricItal
  Cœ -- lo -- rum gau -- di -- a. __
  \lyricNormal
  O that we were there! __ O that we were there!
}
altoWordsIV = \lyricmode {
  \set stanza = "4. "
  \lyricItal
  U -- bi sunt gau -- di -- a __
  \lyricNormal
  If that they be not there?
  There are an -- gels sing -- ing \skip 1
  \lyricItal
  No -- va can -- ti -- ca __
  \lyricNormal
  And there the bells are ring -- ing
  \lyricItal
  In Re -- gis cu -- ri -- a __
  \lyricNormal
  O that we were there! __ O that we were there!
}

tenorMusic = \relative c' {
  a4 |
  bes2 a4 c2 bes4 |
  a2( bes4 g2) a4 |
  bes2 a4 c2 bes4 |
  a2( bes4 g2) s4 |

  c2 bes4 g2 e4 |
  f2. a2 \parenthesize  a4 |
  d2 d4 c2 bes4 |
  a2( bes4 c2) c4 |

  c2 bes4 g2 e4 |
  f2. a2 a4 |
  d2 d4 c4.( d8) bes4 |
  a2( bes4 c2.) |

  a2 a4 g2 g4 |
  a2( bes4 g2.) |
  f2 bes4 d2 c4 |
  \once \override Staff.TimeSignature.break-visibility = ##(#f #f #f)
  a2. s2 \bar "|."
}
tenorWords = \lyricmode {

}

bassMusic = \relative c {
  f4 |
  f2 f4 f2 f4 |
  f2.~ f2 f4 |
  f2 f4 f2 f4 |
  f2.( c2.) |

  a2 bes4 c2 c4 |
  f2. d2 \parenthesize d4 |
  bes2 bes4 c2 c4 |
  f2.~ f2 f4 |

  a,2 bes4 c2 c4 |
  f2. d2 d4 |
  bes2 bes4 c2 c4 |
  f1. |

  f2 f4 e2 e4 |
  d2.( c2.) |
  f2 d4 bes2 c4 |
  <<f2. f,>> d'2\rest \bar "|."

}
bassWords = \lyricmode {

}

\score {
  <<
   \new ChoirStaff <<
    \new Staff = women <<
      \new Voice = "sopranos" { \voiceOne << \global \sopMusic >> }
      \new Voice = "altos" { \voiceTwo << \global \altoMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"women" } \lyricsto "sopranos" \sopWords
    \new Lyrics = "altosIV"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsIV
    \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsIII
    \new Lyrics = "altosII"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsII
    \new Lyrics = "altos"  \with { alignBelowContext = #"women"  } \lyricsto "sopranos" \altoWords
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"men"  } \lyricsto "tenors" \tenorWords
    \new Lyrics \with { alignBelowContext = #"men"  } \lyricsto "basses" \bassWords
  >>
  >>
}
