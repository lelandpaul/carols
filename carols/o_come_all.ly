\header {
  filename = "o_come_all.ly"
  enteredby = "Gordon Gilbert"
  composer = "John Francis Wade"
  poet = "John Francis Wade"
  date="1751"
  title = "O Come All Ye Faithful"
  subtitle = "(Adeste Fideles)"
  index_as = "Adeste Fideles"
  metre = "trans. Frederick Oakley"
  meter = \metre
  copyright = "Public Domain"
  style = "Hymn"
  mutopiacomposer = \composer
  mutopiapoet=\poet
  maintainer = "Maia McCormick"
  maintainerEmail = "maia.mcc@gmail.com"
  lastupdated = "2017/Dec/01"
}

\version "2.14.2"

\include "header.ly"

global= {
  \preamble
  \time 4/4
  \key aes \major
  \partial 4
}

sop = \context Voice = "sop"    {
  \voiceOne
  \global
  \parenthesize aes'4 |
  \normalsize
  aes'2 ees'4 aes' bes'2 ees'
  c''4 bes' c'' des'' c''2 bes'4 \parenthesize aes'
  \normalsize
  aes'2 g'4 f' \slurDashed g'( aes') bes'( c'') \slurSolid g'2( f'4.) ees'8 ees'1
  ees''2 des''4 c'' des''2 c'' bes'4 c'' aes' bes' g'4.( f'8) ees'4
  ^ \markup{ \large \italic Refrain }
  aes'4 aes' g' aes' bes' aes'2 ees'4
  c'' c'' bes' c'' des'' c''2 bes'4
  c'' des'' c'' bes' aes' g'2 aes'4( des'')
  c''2( bes'4.) aes'8 aes'2. \bar "|."
}

alto=\context Voice = "alto"   {
  \voiceTwo
  \global
  \parenthesize ees'4 |
  \normalsize
  ees'2 ees'4 ees' ees'2 ees' ees'4 ees' ees' f' ees'2 ees'4 \parenthesize c'
  \normalsize
  c'( d') ees' d' \slurDashed ees'4( ees') ees' ( ees') \slurSolid ees'2( d'4.) ees'8 ees'1
  ees'2 f'8 g' aes'4 aes'( g') aes'2 ees'4 ees' f' f' ees'2 ees'4
  ees'4 ees'1 ~ ees'2. ees'4 ees' ees' ees' ees' ees'2 ees'4 aes' g'
  aes' ees' ees'8( d') ees'2 ees'4( f') ees'2 ~ ees'4. c'8 c'2.

}

tenor = \context Voice = "tenor"   {
  \voiceOne
  \global
  \parenthesize c'4 |
  \normalsize c'2 c'4 c' des'2 bes aes4 bes aes aes aes2 g4 \parenthesize aes
  \normalsize
  aes2 bes4 bes \slurDashed bes( aes) g( ees) \slurSolid bes2( aes4.) g8 g1
  c'2 des'4 ees' ees'2 ees' ees'4 aes c' des' bes4.( aes8) g4
  c' c' bes c' des' c'2 c'4 aes aes g aes bes aes2 g4
  ees' ees' ees' bes bes bes2 aes aes( g4.) aes8 aes2.
}

bass = \context Voice = "bass"   {
  \voiceTwo
  \global
  \parenthesize aes4 |
  \normalsize aes2 aes4 aes aes2 g aes4 g aes des ees2 ees4 \parenthesize f4
  f2 ees4 bes, \slurDashed ees( c) g,( aes,) \slurSolid bes,2 ~ bes,4. ees8 ees1
  c'2 bes4 aes bes2 aes g4 aes f des ees2 ees4 r4
  r1 r2. aes4 aes g aes des ees2 ees4 aes bes aes g f ees( des) c( des)
  ees2 ~ ees4. aes,8 aes,2.
}

accomp=\chordmode {

}


latin = \lyricmode {
  \lyricItal
  A -- des -- te fi -- de -- les
  lae -- ti tri -- um -- phan -- tes,
  Ve -- ni -- te, ve -- ni --
  \set ignoreMelismata = ##t
    te in
  \set ignoreMelismata = ##f
    Beth -- le -- hem.
  Na -- tum vi -- de -- te
  Re -- gem an -- ge -- lo -- rum:
  Ve -- ni -- te a -- do -- re -- mus,
  Ve -- ni -- te a -- do -- re -- mus,
  Ve -- ni -- te a -- do -- re -- mus __
  Do -- mi -- num.
}

stanzaa = \lyricmode {
  O come, all ye faith -- ful, Joy -- ful and tri -- um -- phant,
  O come ye, O come __
  \set ignoreMelismata = ##t
    ye to
  \set ignoreMelismata = ##f
    Beth -- le -- hem;
  Come and be -- hold Him Born the King of An -- gels:

  O come, let us a -- dore Him,
  O come, let us a -- dore Him,
  O come, let us a -- dore Him, __ Christ the Lord!
}

stanzab = \lyricmode {
  _ God of _ God, _ Light _ of _ Light, _ _
  Lo, He ab -- hors not the Vir -- gin's womb;
  Ve -- ry _  God, Be -- got -- ten, not cre -- a -- ted;
}

stanzac = \lyricmode {
  _ Sing, choirs of an -- gels, Sing in ex -- ul -- ta -- tion, _
  Sing, all ye
  \set ignoreMelismata = ##t
    ci -- ti -- zens of
  \unset ignoreMelismata
    heav'n __ a -- bove,
  Glo -- ry to God, all glo -- ry in the high -- est;
}

stanzad = \lyricmode {
  _ See how the Shep -- herds, sum -- moned to His cra -- dle,
  _ Lea -- ving their flocks-draw nigh with low -- ly fear;
  We too will thi -- ther Bend our joy -- ful foot -- steps;
}

stanzae = \lyricmode {
  _ Yea, Lord, we greet Thee, Born this hap -- py mor -- ning,
  _ Je -- su, to Thee __ be __ glo -- ry given;
  Word of the Fa -- ther, Now in flesh ap -- pear -- ing;
}

stanzaf = \lyricmode {
  _ Lo! star -- led chief -- tains, Ma -- ji, Christ a -- dor -- ing
  _ Of -- fer Him frank-in -- cense and gold and myrrh;
  We to the Christ Child Bring our hearts' o -- bla -- tions:
}


\score {
  \context ChoirStaff <<
    \context ChordNames \accomp
    \unset ChoirStaff.melismaBusyProperties
    \context Staff ="upper"  { \clef "G" <<
      \sop
      \alto
    >>}

    \lyricsto "sop" \context Lyrics = "stanza-l" {
      \set stanza = "Latin."
      \latin }
    \lyricsto "sop" \context Lyrics = "stanza-1" {
      \set stanza = "1."
      \stanzaa }
    \lyricsto "sop" \context Lyrics = "stanza-3" {
      \set stanza = "2."
      \stanzac }
    \lyricsto "sop" \context Lyrics = "stanza-5" {
      \set stanza = "3."
      \stanzae }
                                %	\lyricsto "sop" \context Lyrics = "stanza-6" {
                                %		\set stanza = "6."
                                %			\stanzaf }
    \context Staff = "lower"  { \clef "F"<<
      \tenor
      \bass
    >>}
  >>
}

