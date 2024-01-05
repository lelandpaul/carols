\version "2.18.0"
\include "header.ly"

#(set-default-paper-size "a4")
#(set-global-staff-size 16.4)
#(ly:set-option 'point-and-click #f)

ss=\once \set suggestAccidentals = ##t
mt=#(define-music-function (parser location offset) (number?) % move lyric text
      #{ \once \override LyricText.X-offset = -$offset #})

\header {
	title = "Ríu Ríu Chíu"
	composer = "16th Century Villancico (ed. Nancho Alvarez)"
	enteredby = "Nancho Alvarez"
}


global={\key c \major \time 2/2  \skip 1*13 \bar "||" \break
					\skip 1*15 \bar "||" \break
					\skip 1*16 \bar "|."
}

cantus={
    \preamble
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
%5
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
%10
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
	a'4^\segno a' g' a' |
%15
	f'2 e'4 d' ~ |
	d' e' f' g' |
	a'2 a' |
	R1*4/4 |
	r2 a'4 a' |
%20
	g' a' f'2 |
	e'4 f'2 f'4 |
	e' e' d'2 |
	d' r |
	R1*4/4 |
%25
	a'4 a' g' a' |
	f'2 e'4 d' ~ |
	d' d' c' c' |
	d'2 d'
        \once \override Score.RehearsalMark.break-visibility = #'#(#t #t #f)
        \override Score.RehearsalMark.self-alignment-X=#right
        \mark \markup{"Fin"}
	R1*4/4 |
%30
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
%35
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
%40
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
	R1*4/4
}

altus={
    \preamble
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
%5
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
%10
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
	f'4 f' e' c' |
%15
	d'2 e'4 f' ~ |
	f' e' d' d' |
	c'2 c' |
	R1*4/4 |
	e'4 e' d' c' |
%20
	e' c' d'2 |
	c'4 d'2 d'4 |
	c' c' d'2 |
	d' r |
	r e'4 e' |
%25
	d' c' e' c' |
	d'2 c'4 a ~ |
	a a a a |
	a2 a |
	R1*4/4 |
%30
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
%35
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
%40
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
	R1*4/4
}

tenor={
    \preamble
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
%5
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
%10
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
	c'4 c' c' a |
%15
	a2 a4 a ~ |
	a a d d |
	e2 e |
	r c'4 c' |
	b c' a2 |
%20
	b4 a a2 |
	a4 a2 a4 |
	a a a2 |
	a r |
	c'4 c' b c' |
%25
	a2 b4 a |
	a2 a4 f ~ |
	f f e e |
	d2 d |
	R1*4/4 |
%30
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
%35
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
%40
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
	R1*4/4
}

bassus={
    \preamble
	a4 a g a |
	f2 e4 d ~ |
	d e f g |
	a2 a |
%5
	r a4 a |
	g a f2 |
	e4 g2 g4 |
	e f d2 |
	d r |
%10
	a4 a g a |
	f2 e4 g ~ |
	g g e f |
	d2 d |
	f4 f c f |
%15
	d2 a,4 d ~ |
	d c bes, bes, |
	a,2 a, |
	r a4 a |
	g a f2 |
%20
	e4 f d2 |
	a,4 d2 d4 |
	a, a, d2 |
	d r |
	a4 a g a |
%25
	f2 e4 f |
	d2 a,4 d ~ |
	d d a, a, |
	d2 d |
        s4*0^\markup{\larger "Coplas"} \slurDotted
	a4 a g a |
%30
	f2 e4 g ~ |
	g g e f |
	d2( d) |
	a4 a g a |
	f2 f4 e |
%35
	g g e f |
	d2( d) |
	a4 a g a |
	f2 f4 e |
	d e f g |
%40
	a2( a) |
	a4 a g a |
	f2 f4 e |
	g g e f |
	d2 d
        \mark \markup{"D.S."} \slurSolid
}

textocantus=\lyricmode{
Ri -- u, ri -- u,
chi -- u,
la __ _ guar -- da ri -- be -- ra:
Dios guar -- dó del lo -- bo de nues -- tra cor -- de -- ra,
Dios guar -- dó del lo -- bo
a __ _ nues -- tra cor -- de -- ra.
}

textoaltus=\lyricmode{
Ri -- u, ri -- u,
chi -- u,
la __ _ guar -- da ri -- be -- ra:
Dios guar -- dó del lo -- bo,
lo -- bo, de nues -- tra cor -- de -- ra,
Dios guar -- dó del lo -- bo, lo -- bo  a __ _ nues -- tra cor -- de -- ra.
}

textotenor=\lyricmode{
Ri -- u,
ri -- u,
chi -- u,
la __ _ guar -- da ri -- be -- ra:
Dios guar -- dó del lo -- bo,
del lo -- bo,
de nues -- tra cor -- de -- ra,
Dios guar -- dó del lo -- bo,
del -- lo -- bo a __ _
nues -- tra cor -- de -- ra.
}

textobassus=\lyricmode{
Ri -- u, ri -- u,
chi -- u,
la __ _ guar -- da ri -- be -- ra:
Dios guar -- dó del lo -- bo de nues -- tra cor -- de -- ra,
Dios guar -- dó del lo -- bo
a __ _ nues -- tra cor -- de -- ra.
Ri -- u, ri -- u,
chi -- u,
la __ _ guar -- da ri -- be -- ra:
Dios guar -- dó del lo -- bo,
del lo -- bo,
de nues -- tra cor -- de -- ra,
Dios guar -- dó del lo -- bo, del lo -- bo
a __ _ nues -- tra cor -- de -- ra.
El lo -- bo ra -- bio -- so
la __ _ qui -- so mor -- der, __ _
mas Dios po -- de -- ro -- so la su -- po de -- fen -- der; __ _
qui -- so -- la ha -- cer que no pu -- die -- se pe -- car, __ _
ni~aun o -- ri -- gi -- nal es -- ta Vir -- gen no tu -- vie -- ra.
}
textobassusb=\lyricmode{
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Es -- te que~es na -- ci -- do
es _ el gran mo -- nar -- ca,
Cris -- to pa -- tri -- ar -- ca
de car -- _ ne ves -- ti -- do;
ha -- nos re -- di -- mi -- do
con se ha -- cer chi -- qui -- to
aun -- que~e -- ra~in -- fi -- ni -- to,
fi -- ni -- to se hi -- cie -- ra.
}

\score {\transpose c' c'{
\new ChoirStaff<<

	\new Staff <<\global
	\new Voice="v1" {
		\set Staff.shortInstrumentName="S "
		\clef "treble"
		\cantus }
	\new Lyrics \lyricsto "v1" {\textocantus }
	>>

	\new Staff <<\global
	\new Voice="v2" {
		\set Staff.shortInstrumentName="A "
		\clef "treble"
		\altus }
	\new Lyrics \lyricsto "v2" {\textoaltus }
	>>

	\new Staff
	<<\global
	\new Voice="v3" {
		\set Staff.shortInstrumentName="T "
		\clef "G_8"
		\tenor }
	\new Lyrics \lyricsto "v3" {\textotenor }
	>>

	\new Staff <<\global
	\new Voice="v4" {
		\set Staff.shortInstrumentName="B "
		\clef "bass"
		\bassus }
	\new Lyrics \lyricsto "v4" {\textobassus }
	\new Lyrics \lyricsto "v4" {\textobassusb }
	>>

>>

	} % transpose

\layout{
	\context {\Lyrics
		\override VerticalAxisGroup.staff-affinity = #UP
		\override VerticalAxisGroup.nonstaff-relatedstaff-spacing =
			#'((basic-distance . 0) (minimum-distance . 0) (padding . 1))
		\override LyricText.font-size = #1.2
		\override LyricHyphen.minimum-distance = #0.5

		% with thanks: https://music.stackexchange.com/a/117504
  		\override LyricExtender.right-padding = #1
	}
	\context {\Score
		tempoHideNote = ##t
		\override BarNumber.padding = #2
	}
	\context {\Voice
		melismaBusyProperties = #'()
		%autoBeaming = ##f
	}
	\context {\Staff
                \RemoveEmptyStaves
                \override VerticalAxisGroup.remove-first = ##t
		\override VerticalAxisGroup.staff-staff-spacing =
			#'((basic-distance . 11) (minimum-distance . 0) (padding . 1))
	}
  }
}

\paper{
	%system-count=20
	%page-count = 8
	ragged-last-bottom = ##f
	indent=0\cm
	system-system-spacing =
	#'((basic-distance . 20) (minimum-distance . 0) (padding . 5))
	top-system-spacing = % header
	#'((basic-distance . 8) (minimum-distance . 0) (padding . 0))
	last-bottom-spacing = % footer
	#'((basic-distance . 15) (minimum-distance . 0) (padding . 0))
	markup-system-spacing.padding = #2.5

}
