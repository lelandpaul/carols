# A Carefully Curated and Compiled Collection of Christmas Carols (optionally in shapes)

Here's the problem with existing books of Christmas carols:

- They don't have all the carols we like.
- They take up space with carols we don't like.
- They pick bad arrangements.
- They pick bad lyrics.
- It's expensive to buy enough copies to have a good caroling party.
- They're usually in round notes.

This is a book of some of our favorite four-part Christmas carols, using Maia McCormick's [`carols` project](https://github.com/maiamcc/carols) as a jumping-off point. If you see stuff you like, or gaps that demand to be filled, feel free to fork this repo, make PRs, etc.!

The major addition of this fork is versions of the packet in 4 and 7 shapes, _a la_ the Sacred Harp and the Christian Harmony respectively.

### Just want the PDFs?
This repo also contains the latest generated versions of the carol book:
* **Full-Size** (with links in the pdf, good for singing off a tablet)
    - [round notes](/carols-print-round.pdf)
    - [four-shape](/carols-print-4.pdf)
    - [seven-shape](/carols-print-7.pdf)
* **Booklet** (for printing and folding into a booklet)
    - [round notes](/carols-booklet-round.pdf)
    - [four-shape](/carols-booklet-4.pdf)
    - [seven-shape](/carols-booklet-7.pdf)

## Project structure

Each carol lives in its own Lilypond file inside the `carols` subdirectory. The build script (`build.py`) builds each of this Lilypond files into a pdf in the `build` subdirectory. The final product is a pdf generated via LaTeX (by default, `carols.pdf`).

## Compiling
The `build.py` script takes care of compiling any Lilypond files that have changed and (re)building the book. By default, it dumps the final product in `./carols.pdf`, though this (and many other settings) can be configured via the command line (run `build.py -h` for more info).

### Compiling a single carol
Carols are compiled into pdfs via [Lilypond](http://lilypond.org/download.html). However, last I heard, Lilypond didn't work on the latest MacOS 😢 so now this project runs Lilypond in a container (with thanks to [Kyle W. Baldwin](https://kylebaldw.in/posts/2019/running-lilypond-on-catalina/)). To compile a single carol, use the `compile_with_docker.sh` script. E.g. to compile `carols/my_carol.ly` to `build/my_carol.pdf`, run:
```
./compile_with_docker.sh my_carol
```

## Dependencies

You should have [Docker](https://www.docker.com/) and [LaTeX](https://www.latex-project.org/get/) installed, as well as Python 3 and the Python dependencies (`pip install -r requirements.txt`).

### Booklet Mode

If you run the build script with flag `--booklet`, in addition to the normal output, it will generate a version of your carol packet with the pages duplexed and interleaved for booklet printing:

![Booklet page layout](/resources/booklet-pages.png?raw=true "Booklet page layout")

Print your booklet file double-sided ("flip on short edge") and you can fold it in half, staple if (if you want, I don't care), and have a nice little booklet of carols.

## Lilypond Metadata

In order to generate a table of contents, the build script parses through each Lilypond file to grab some metadata from the `\header` block. By default, a carol is entered in the table of contents as it's `title` (with any leading articles moved to the back). If for some reason you want to override this behavior, put the desired title in the header matter as `toc_as`.


```
\header {
  title = "Lully Lullay (The Coventry Carol)"
  toc_as = "The Coventry Carol"
  poet = "Robert Croo, 1534"
  composer = "16th Centry English Carol"
  arranger = "arr. Martin Fallas Shaw (1875-1958)"
}
```
