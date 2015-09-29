% music.ily: Template for music file, for inclusion within a layout template.
% Copyright (C) 2015, Brian Clements

% This program is free software: you can redistribute it and/or modify it under
% the terms of the GNU General Public License as published by the Free Software
% Foundation, either version 3 of the License, or (at your option) any later
% version.

% This program is distributed in the hope that it will be useful, but WITHOUT
% ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
% FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
% details.

% You should have received a copy of the GNU General Public License along with
% this program.  If not, see <http://www.gnu.org/licenses/>.


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                                Music                                %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\header {
    dedication = ""
    title = ""
    subtitle = ""
    subsubtitle = ""
    instrument = ""
    poet = ""
    composer = ""
    catalog = ""
    year = ""
    meter = ""
    opus = ""
    arranger = ""
    piece = ""
    head = ""
    owner = ""
    enteredby = ""
    maintainer = ""
    maintainerEmail = ""
    copyright = \markup {
        Copyright © \year by \owner
        }
    footer = ""
	tagline = \markup { 
		\override #'(box-padding . 0.5)
		\override #'(baseline-skip . 1.0) 
		\box \center-column {
			\small \line { 
				Typeset using \with-url #"http://www.LilyPond.org"
				\line {
					\teeny " www." LilyPond \teeny ".org" \hspace #0.5
					}
				• \hspace #0.5 Compiled: \timeStamp
				• \hspace #0.5 Reference: \catalog 
				} 
			\small \line {
				Copyright © \year by \owner \hspace #0.5 • \hspace #0.5 Used by permission. All rights reserved.
				}
			}
		}
	}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                             Variables                               %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

defaults = {
    % Set global key, tempo, time
    \key c \major
    \tempo 4=76
    \time 4/4
    }

codaSpace = {
    \cadenzaOn 
    \stopStaff
    \once \override Staff.Clef #'transparent = ##t
    \once \override Staff.KeySignature #'transparent = ##t
    \once \override Score.BarNumber #'transparent = ##t
    \skip 1*1 \bar ""
    % uncomment below to add extra space above the coda
    %\once \override Staff.Clef #'break-visibility = #all-invisible
    %\once \override Staff.KeySignature #'break-visibility = #all-invisible
    %\break \skip 1*1
    \startStaff
    \cadenzaOff
    \once \override Staff.Clef #'break-visibility = #all-visible
    \once \override Staff.KeySignature #'break-visibility = #all-visible
    \once \override Score.MetronomeMark #'stencil = ##f
    \defaults
    s1*0\mark \markup { \huge \box \musicglyph #"scripts.coda" }
    }

parenthesizeBar = {
    \once \override Score.RehearsalMark #'padding = #1
    \once \override Score.RehearsalMark #'font-size = #10
    \once \override Score.RehearsalMark #'extra-offset = #'(10 . -11.15)
    s1*0\mark \markup { "(" \hspace #13.0 ")" }
    }

textSpanModOne = {
    \override TextSpanner #'dash-period = #1
    \override TextSpanner #'dash-fraction = #0.25
    \once \override TextSpanner #'(bound-details left text) = \markup {
        \lower #0.5 \draw-line #'(0 . -2) \upright {
            "play 1" \hspace #-0.75 \tiny st "x only"
            }
        }
    \once \override TextSpanner #'(bound-details right text) = \markup {
        \hspace #1 \draw-line #'(0 . -2)
        }
    }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                               Global                                %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% It is recomended that the main sections in a piece (the segments between
% rehearsal marks) be grouped into section variables. They contain spacers and
% nothing else.  They get grouped together in the `\global` variable, but also
% can be used when constructing the chord changes for individual parts; which
% are made up of sections of space and careful filtering of \globalChords. This
% lets you set once, and use twice.

sectionASpace = {
    s1*4
    }

global = { 
    % For things that apply to every staff such as defaults, rehearsal marks,
    % barlines. Combine the section spacer variables from above in this
    % section.
    \defaults
    % A
    \mark \default
        \sectionASpace \bar "|."
	}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                           Chord Changes                             %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordChanges = \chords {
    \chordDefaults
    % A
    }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                         Musical Fragments                           %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% It's best to write out all repeated musical fragments here in an organzied
% and incremental way. Make all fragments \relative to c' for treble
% instruments, and \relative to c for bass instruments. This prevents
% transposition octave problems later.

aaaaa = \relative c' {
    c1
    c
    c
    c
    }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                               Part A                                %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

partAName = ""

partAMusic = \relative c' {
    \set Staff.midiInstrument = "acoustic grand"
    \set Staff.instrumentName = \partAName
    \set Staff.shortInstrumentName = ""
    \clef treble
    % A
        \aaaaa
    }

