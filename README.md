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

2. The `music.ily` is where all your project-specific information goes.
    * piece info in the /header section
    * key/tempo/time in the defaults section
    * staff instrument names
    * chord changes
    * musical fragments
    * all other music in the prescribed sections that match your `layout.ily`
      file. Feel free to include instrument names in comments to help navigate,
      but I recommend against changing the variable names so that the plug-in
      nature of the templates remaines preserved.

2. The `layout.ily` file is where you put together the clefs and chord changes
   into staves.
    * Comment/delete the parts you don't need in the "part layouts" section.
    * Layout your score in the "score layout" section with the parts you kept.

3. At this point, you need either the [singlepart][singlepartrepo] or the
   [multipart][multipartrepo] layouts for actually building the pdf documents.
   Head to one of those repositories for further instruction.

## Contribution
Suggestions and contributions are always welcome and appreciated.

## Documentation

More detailed documentation is in the works to explain more advanced
configurations and the reasoning behind some design choices.

## License
lyTemplates-music is licensed under the GPL3 license.

## Changelog

### Version 1.0.0

2015.10.04

* Complete re-working of layout and file structure.
    * Separate staff layout into it's own section and put it in it's own
      repository along with the music.
    * Music/layout are separate repository to which single/multipart layouts can
      plug into using git submodules.
* Uses GPL3 license
* Supports LilyPond 2.16.2
