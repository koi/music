# lyTemplates-music

This is a [LilyPond](http://lilypond.org) template for the music and layout
files required for all other single/multipart templates. 

## Overview

This is the repository that, once you clone, you can use to track the changes to
your music, separate from the changes made to template files. Here we barrow
inspiration from MVC (Model-View-Controller) frameworks to separate our music,
from our layout templates, from our compilation process. This allows one to
update or swap out views on already existing music. After starting with this
repository, we use git's submodule feature to plug-in either the
[singlepart][singlepartrepo] or the [multipart][multipartrepo] layouts.

[singlepartrepo]: https://github.com/brianclements/lyTemplates-singlepart
[multipartrepo]: https://github.com/brianclements/lyTemplates-multipart

## Requirements
Lilypond 2.16.2

## Install

1. Clone this repository. Choose your protocol wisely if you use 2-factor
   authentication and plan to submit changes upstream.
    * `git clone git@github.com:brianclements/lyTemplates-music.git piece-name`
    * I'd suggest creating a separate branch of this template for your
      actual music so that if you ever want to update or modify the template
      itself seperate from your music, you can always rebase your music onto the
      upstream template changes.
    * Depending on your branching preferences, I'd go with either "master" for
      music and "template" for upstream changes, or "master" for upstream
      changes and "draft" for music.

2. Inside `info.ily` lies empty variables where all the copyright, maintainer,
   composer, and piece information should go as simple strings.

3. The `header.ily` file is where the variables in `info.ily` can be modified
   with additional markup for final formatting. 
    * The reason for the info/header file split was for the `\tagline` variable.
        The [lyInclude][lyInclude] repository is a library for various functions
        and utilities, and one of those functions is boilerplate copyright footers.
        The tagline copyright text uses header info, and the header must designate
        a tagline. So this split was a fix to that recursion problem that was
        introduced.

4. Global music formatting parameters go in `global.ily`.
    * These parameters include:
        * song defaults (key, tempo, time signature)
        * barlines
        * repeats 
        * rehearsal marks
        * space
    * All sections of music should be organized into variables containing space,
      which then get used to form the the glue which holds the other formatting
      parameters together.
        * suggested naming scheme is `sectionASpace`, `sectionAEndingSpace`,
          `sectionAEndingAltSpace`. The "Space" suffix will prove vital later;
          it's use is strongly suggested.
        * These variables only container spacers, ex. `s1*8`.
        * The same section space variables will be used later in specific parts
          as place holders while constructing the piece as well as to take up
          space before/after a section containing chord changes. (section "A"
          has space where chords aren't needed, but section "B" has the solo
          section where the chords are needed).
    * In addition to the individual parts all acquiring the same global
      parameters and space variables, the score will also appear with empty
      space for parts that don't have music filled in yet. Having individual
      parts line up visually, even when empty is immensely helpful when you
      start to get many instruments. Processes' like these allow one to not even
      need bar checking.

5. The `chords.ily` is where all chord changes go.
    * all chords are broken into the same sections as the spacer variables set
      in `global.ily`. This allows for easy swapping of space for chords etc.
        * as such, they should have a similar naming scheme: `sectionAChords`,
          `sectionAEndingChords`, `sectionAEndingAltChords` etc.
    * all chords must be tagged. In pieces where solo sections, or any other
      need for chords are not continuous throughout the piece, then one uses
      combinations of `\keepWithTag`, `\removeWithTag`, and `\appendToTag` to
      construct a timeline of chord activity and space. This can only be done
      however when one can manipulate the chords via a tag; hence the
      requirement.

6. It is a great practice to put any piece of music that repeats, or that is
   otherwise reused or recombined into fragments in the `fragments.ily` file.
    * Use a naming scheme that fits your preference, but I found it too tedious
      to come up with descriptive names, so I just use a counting 5 digit, base
      26 system and put descriptions in the comments.
    * Combine with tag within the fragments for easier slicing and combining of
      reused music segments.

7. The `layout.ily` file is where you put together the clefs and chord changes
   into staves and set instrument specific transposition.
    * First, comment/delete the parts you don't need in the Part and Staff
      layout sections.
    * The "Staff Layout" section is where you set the staff type, and combine
      `\global`, the music, and the chords together. Notice the "partChords"
      tag. This allows one to omit the staff specific chords from the final
      score if one so chooses. I found this helpful with rhythm section parts,
      who almost all need the chords in their individual parts, but seemed
      redundant to me to all have it in thier staves in the combined score.
    * The Staves you create are combined in the "Parts" section. Here you can
      set instrument specific transposition. We use tags to be able to
      dynamically choose concert pitches (for midi output, or a score entirely
      in concert pitch if one so chooses) or transposed pitches for playing.
    * Finally, the "Score Layout" section is where you combine parts for the
      score.

8. The `music.ily` is where all your actual music should go, minus the
   fragments definitions.
    * instrument staff names
    * instrument chord changes
    * all other music in the prescribed sections that match your `layout.ily`
      file. Feel free to include instrument names in comments to help navigate,
      but I recommend against changing the variable names so that the plug-in
      nature of the templates remaines preserved. Usually, searching the file
      for an instrument name is enough.

9. The `settings.ily` is a bit of an experiment. Lilypond gets complicated when
   you try to manipulate the language itself, and I wanted ways to pass
   variables as arguments to functions, which I couldn't figure out. So my
   solution was to use wrapper functions for two items:
    * `globalTranspose` for transposing the final product into a desired key all
      at once so one doesn't have to manipulate every single staff. One setting
      changes the visual output of the score and all the parts.
        * manually edit the line containing `\transpose c c` from the original
          to the desired key to set.
    * `scoreStyle` displays the score as either fully transposed or in concert
      pitches (but is still subject to `globalTranspose`)
        * manually edit the line containing `\removeWithTag` and either input
          `#'transposed` to remove the transposed music, thereby selecting
          concert pitch for the score or `#'concert` to remove the concert pitch
          music and create a transposed score.

10. At this point, you need either the [singlepart][singlepartrepo] or the
   [multipart][multipartrepo] layouts for actually building the pdf documents.
   Head to one of those repositories for further instruction.

[lyInclude]: https://github.com/brianclements/lyInclude
## Contribution
Suggestions and contributions are always welcome and appreciated.

## Documentation

More detailed documentation is in the works to explain more advanced
configurations and the reasoning behind some design choices.

## License
lyTemplates-music is licensed under the GPL3 license.

## Changelog

### Version 0.2.0

2015.10.26

* Blow out `music.ily` sections into individual files: chords, fragments,
  global, header, info, layout, music, settings.
    * Split header and piece "info" into two separate files so we can use
      copyright boilerplate and allow formatting of piece info seperate from
      it's input.
* add globalTranspose() and scoreStyle() to settings.ily

### Version 0.1.0

2015.10.18

* Complete re-working of layout and file structure.
    * Separate staff layout into it's own section and put it in it's own
      repository along with the music.
    * Music/layout are separate repository to which single/multipart layouts can
      plug into using git submodules.
* rename chordChanges to globalChords: more consistent naming scheme
* Character/format/code cleanup from legacy code
* Uses GPL3 license
* Supports LilyPond 2.16.2
* use tags for chord changes
* include examples of every component
* pre-fill 26 empty parts for comment/removal: easier then adding from 0
* switch to letters for rehearsal marks: easier for maintainer, performers
  don't care
