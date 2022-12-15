\version "2.14.2"
\include "header.ly"

\header {
  enteredby = "Maia McCormick"
  composer = "J.S. Bach"
  date=""
  title = "O Little One Sweet"
  maintainer = "Maia McCormick"
  maintainerEmail = "maia.mcc@gmail.com"
  lastupdated = "2022/Dec/14"
}

global = {
  \preamble
  \key g \major
  \time 3/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
}

sopMusic = \relative c'' {
  \partial 4 g4 |
  g4. fis8 g4 | a2 fis4 | g fis e | d2 \bar "" \break
  b'4 |
  a2 a4 | \slurDashed g4( g) a | \slurSolid d,4. ( e8) fis4 | g2 \bar "" \break
  b4 |
  c2 c4 | a2 a4 | b2 b4 | g2 \bar "" \break
  g4 |
  a2 a4 | fis2 fis4 | g2 g4 | e2\fermata \bar "" \break
  a4 |
  d,4 e fis | g2 b4 | a4. g8 fis4 | g2 \bar "|."

}
sopWords = \lyricmode {}

altoMusic = \relative c' {
  \partial 4 b4 |
  b8( cis) dis4 e | e8( d? cis4) d | d4. b8 cis4 | a2 d4 |
  d4.( c?8) b fis' | \slurDashed fis4.( e8) d4 | \slurSolid d2 c4 | b2 d4 |
  c8( d e4) e | d2 d8( e) | f4( g8 f) e( d) | e2 e4 |
  e4( cis8 d) e4 | e( d8 cis) d4 | g,8( a b c?) d4 | d( c) c |
  b8( a) g4 a | d2 d4 | e8( d) c4. c8 | b2

}

tenorMusic = \relative c' {
  \partial 4 g4 |
  g b b | a2 a4 | b4. b8 e,( a) | fis2 g4 |
  g( fis) b | \slurDashed b( c4.) c8 | \slurSolid b2 a4 | g2 g4 |
  g4.( a8) g4 | g4( fis8 g) a4 | g2 f4 | e2 b'4 |
  a2 a4 | a2 a4 | d,2 g4 | g2 fis4 |
  g8( fis) e4 d | d2 g4 | g( c8) b a4 | g2

}
tenorWords = \lyricmode {}

bassMusic = \relative c' {
  \phrasingSlurDotted
  \partial 4 g8 fis |
  e4 b e8( d) | cis( b a4) d | b g a | d2 g,4 |
  d'8( cis d4) dis | e8\(( dis) e4\) fis | g( c,) d? | g,2 g'8( fis) |
  e4( c) a | d2 fis8( e) | d4( b) g | c2 e8( d) |
  cis4( a) cis | d2 d8( c?) | b4( g) b | c2\fermata a4 |
  b4 c8( b) c( a) | g4 c8( b a g) | c4 a d | g,2

}

bassWords = \lyricmode {}

altoWords = \lyricmode {
  O lit -- tle one sweet, O lit -- tle one mild,
  \set stanza = # "  1. "
  \set ignoreMelismata = ##t
  thy Fa -- ther's pur -- pose thou
    \unset ignoreMelismata hast ful -- filled;
  thou came'st from heav'n to mor -- tal ken,
  e -- qual to be with us poor men,
  o lit -- tle one sweet, o lit -- tle one mild.
}
altoWordsII = \lyricmode {
  \repeat unfold 10 { \skip 1 }
  \set stanza = # "  2. "
  with joy thou hast __ the whole world filled;
  thou cam -- est here from heav'n's do -- main,
  to bring men com -- fort in our pain,
}
altoWordsIII = \lyricmode {
  \repeat unfold 10 { \skip 1 }
  \set stanza = # "  3. "
  \set ignoreMelismata = ##t
  in thee Love's beau -- ties are
    \unset ignoreMelismata all dis -- tilled;
  then light in us thy love's bright flame,
  that we may give thee back the same,
}

\score {
  \transpose g a
  <<
    \new ChoirStaff <<
      \new Staff = women <<
        \new Voice = "sopranos" { \voiceOne << \global \sopMusic >> }
        \new Voice = "altos" { \voiceTwo << \global \altoMusic >> }
      >>
      \new Lyrics \with { alignAboveContext = #"women" } \lyricsto "sopranos" \sopWords
      \new Lyrics = "altosIII"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsIII
      \new Lyrics = "altosII"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWordsII
      \new Lyrics = "altos"  \with { alignBelowContext = #"women" } \lyricsto "sopranos" \altoWords
      \new Staff = men <<
        \clef bass
        \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
        \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
      >>
      \new Lyrics \with { alignAboveContext = #"men"} \lyricsto "tenors" \tenorWords
      \new Lyrics \with { alignBelowContext = #"men"} \lyricsto "basses" \bassWords
    >>
  >>
  \layout {
    \override LyricText.font-size = 0.8
    \context {
      \Staff
      \remove Time_signature_engraver
    }
  }
}
