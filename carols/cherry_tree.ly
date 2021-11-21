
\version "2.14.0"
\header {
  filename = "cherry_tree.ly"
  enteredby = "Maia McCormick"
  composer = "English Trad."
  poet = "Trad. (15th cen.?)"
  title = "The Cherry Tree Carol"
  subtitle = "Joseph was an old man"
  maintainer = "Maia McCormick"
  maintainerEmail = "maia.mcc@gmail.com"
  lastupdated = "2021/Nov/20"
}

\include "header.ly"

global= {
  \preamble

  \time 4/4
  \key a \major
}

sop = \context Voice = "sop" \relative c'   {
  \voiceOne \slurDotted \phrasingSlurDotted
  \partial 4 \parenthesize e4
  a( gis) fis e |
  a( a) b4 \slurSolid cis8( d) | \break
  e\(( d) cis( b)\) a4 gis |
  fis2. \parenthesize fis4 |

  \slurDotted
  e'4 cis a a8( a) | \break
  b2 e,4 a8( gis) |
  fis4( d) e gis |
  a1 \bar "|."
}

alto=\context Voice = "alto" \relative c'  {
  \voiceTwo \slurDotted \phrasingSlurDotted
  \partial 4 \parenthesize e4
  e( d) cis e |
  cis( e) fis gis |
  \slurSolid
  a\( gis8( fis)\) e4 e |
  cis2. \parenthesize cis4 |

  \slurDotted
  cis e fis cis8 (cis) |
  \slurSolid
  fis4( dis) e \slurDotted e8( e)|
  d4( d) cis b |
  cis1 \bar "|."
}

tenor = \context Voice = "tenor" \relative c' {
  \voiceOne \phrasingSlurDotted
  \partial 4 \parenthesize e4
  \slurDotted
  cis( b) a gis |
  e'( cis) b \slurSolid e8( d) |
  cis\(( d) e( d)\) cis4 cis |
  a2. \parenthesize a4 |

  \slurDotted
  a cis cis cis8( cis) | \slurSolid
  b( cis b a) gis4 \slurDotted e8( e) |
  a4( b) a e |
  e1 \bar "|."
}

bass = \context Voice = "bass" \relative c {
  \voiceTwo
  \partial 4 \parenthesize e4
  \slurDotted
  a,4( b) cis d |
  e( fis) gis e |
  a( b) cis cis, |
  fis2. \parenthesize fis4 |

  \slurDotted
  a gis fis e8( e) | \slurSolid
  dis4( b) e \slurDotted cis8( cis) |
  d4( b) cis e |
  a,1 \bar "|."
}
accomp=\chordmode {

}


stanzaa = \lyricmode {
  \set ignoreMelismata = ##t
  \skip 1
  Jo -- seph was an old __ _ man,
  an __ _ old __ _ _ _ man was he \skip 1
  when he wed -- ded __ _ Ma -- ry
  in the land of Ga -- li -- lee.
}
stanzab = \lyricmode {
  \skip 1
  Jo  -- seph and Ma -- ry
  walked \set ignoreMelismata = ##t
    through _ an __ _ or -- chard good \skip 1
  where was cher -- ries and ber -- ries
  so __ _ red as a -- ny blood.
}
stanzac = \lyricmode {
  \set ignoreMelismata = ##t
  \skip 1
  O then \set ignoreMelismata = ##f
    be -- spoke Ma -- ry
  with __ words so meek and mild: \skip 1

  % TODO: quotes
  \set ignoreMelismata = ##t
  Pluck me one cher -- ry, Jo -- seph,
  for __ _ I __ _ am with child.
}
stanzad = \lyricmode {
  \set ignoreMelismata = ##t
  \skip 1
  O then \set ignoreMelismata = ##f
    be -- spoke Jo -- seph
  with __ an -- swer most un -- kind: \skip 1
  \set ignoreMelismata = ##t
  Let him pluck thee a cher -- ry
  that _ brought thee now with child.
}

stanzae = \lyricmode {
  \set ignoreMelismata = ##t
  O then \set ignoreMelismata = ##f
    be -- spoke the ba -- by
  with -- in his mo -- ther's womb: \skip1
  Bow down then the __ tallest tree
  \set ignoreMelismata = ##t
  for my mo -- ther to have some.
}

stanzaf = \lyricmode {
  \set ignoreMelismata = ##t
  \skip 1
  Then bowed down the high -- est tree
  \set ignoreMelismata = ##f
  un -- to his mo -- thers hand. \skip1
  Then she cried, see Jo -- seph,
  \set ignoreMelismata = ##t
  I have cher -- ries at com -- mand.
}

stanzag = \lyricmode {
  \set ignoreMelismata = ##t
  Then Ma -- ry \set ignoreMelismata = ##f
    plucked her cher -- ry
  as red as a -- ny blood;
  then Ma -- ry she went home -- wards
  all with her heavy load.

}

\score {
  \context ChoirStaff <<
    \unset ChoirStaff.melismaBusyProperties
    \context Staff ="upper"  { \clef "G" <<
      \global
      \sop
      \alto
    >>}

    \lyricsto "sop" \context Lyrics = "stanza-1" {
      \set stanza = "1."
      \stanzaa }
    \lyricsto "sop" \context Lyrics = "stanza-2" {
      \set stanza = "2."
      \stanzab }
    \lyricsto "sop" \context Lyrics = "stanza-3" {
      \set stanza = "3."
      \stanzac }
    \lyricsto "sop" \context Lyrics = "stanza-4" {
      \set stanza = "4."
      \stanzad }
    \lyricsto "sop" \context Lyrics = "stanza-5" {
      \set stanza = "5."
      \stanzae }
    \lyricsto "sop" \context Lyrics = "stanza-6" {
      \set stanza = "6."
      \stanzaf }
    \lyricsto "sop" \context Lyrics = "stanza-7" {
      \set stanza = "7."
      \stanzag }
    \context Staff = "lower"  { \clef "F"<<
      \global
      \tenor
      \bass
    >>}
  >>
}
