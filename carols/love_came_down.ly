\version "2.14.2"
\include "header.ly"

\header {
  title = "Love came down at Christmas"
  poet = "Christina G. Rosetti, 1885"
  composer = "C. Edgar Pettman, 1923"
  metre = "Love Incarnate 67.67 with refrain"
  meter = \metre
}

global = {
  \preamble
  \key f \major
  \time 4/4
}

sopMusic = \relative c'' {
    c4 d a g8 a | f2 c |
    f4. g8 a bes c4 | f,8 g a4 g2 |
    c4 d a g8 a | f2 e |
    d4. e8 f g a4 | g4 g f2 \bar "||"
    d8[ c] d[ e] f2 | f8[ e] f[ g] a2 |
    a8( g a bes c4) d | c1 \bar "|."

}
sopWords = \lyricmode {

}

altoMusic = \relative c' {
    f4 f a e | d2 c |
    c4. c8 f4 f | f f f( e) |
    f f f e | d2 cis |
    d4. c8 c4 c | d c c2 \bar "||"
    bes8[ a] bes[ c] d2 | d8[ c] d[ e] f2 |
    f2. d8 e | f1 \bar "|."
}

verseOne = \lyricmode {
  \set stanza = #"  1. "
  Love came down at Christ -- mas,
  love all love -- ly, love di -- vine.
  Love was born at Christ -- "mas —"
  star and an -- gels gave the sign.
  Sing _ no __ _ el, sing _ no __ _ el, sing no __ _ el.

}
verseTwo = \lyricmode {
  \set stanza = #"  2. "
    Wor -- ship we the God -- head, 
    love in -- car -- nate,
    love di -- vine.
    Wor -- ship we our Je -- "sus —"
    what shall be our sa -- cred sign?
}
verseThree = \lyricmode {
  \set stanza = #"  3. "
    Love shall be our to -- ken, love be yours and love be mine,
    love to God and neigh -- bor, love for prayer and gift and sign.
}

tenorMusic = \relative c' {
    a4 f c' bes8 c | a2 g |
    a4. g8 c4 c | d c c2 |
    c4 bes a bes | a2 g |
    f4. g8 f e f4 | f e a2 \bar "||"
    r2 f8[ e] f[ g] a4~ a8 r8 
    a( g a bes | c d c bes a4) f8 g | a1 \bar "|."
}
tenorWords = \lyricmode {
    "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" ""
    Sing _ no __ _ el, sing no __ _ el.

}

bassMusic = \relative c, {
    f4 bes c c | d2 e |
    f4. e8 f g a4 | bes a8 f c2 |
    a4 bes c c | d2 a | bes4. bes8 a g f4 |
    bes c f2 \bar "||"
    r2 d8[ c] d[ e] | f4~ f8 r
    f( e f g | a bes a g f4) bes, |
    << f1 c' >> \bar "|."
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
      \new Lyrics = "verseThree"  \with { alignBelowContext = #"women" } \lyricsto "altos" \verseThree
      \new Lyrics = "verseTwo"  \with { alignBelowContext = #"women" } \lyricsto "altos" \verseTwo
      \new Lyrics = "verseOne"  \with { alignBelowContext = #"women" } \lyricsto "altos" \verseOne
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
    \context {
      \Staff
      \remove Time_signature_engraver
    }
  }
}
