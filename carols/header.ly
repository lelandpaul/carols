\header {
  tagline = ""
  copyright = ""
}

\paper {
  ragged-last-bottom = ##t
  #(set-paper-size "half letter")
  bottom-margin = 6\mm
  left-margin = 6\mm
  top-margin = 6\mm
  right-margin = 6\mm
  print-page-number = false
}

preamble = {
  #(set-global-staff-size 14)
  \sacredHarpHeads
}

\layout {
  indent = 0.0\pt
}

lyricItal = {
  \override Lyrics.LyricText #'font-shape = #'italic
}

lyricNormal = {
  \revert Lyrics.LyricText #'font-shape
  \revert Lyrics.LyricText #'font-series
}
