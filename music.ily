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

\include "fragments.ily"
\include "global.ily"
\include "chords.ily"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                              Variables                              %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

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

partAChords = {
    \keepWithTag #'sectionA \globalChords
    }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                               Part B                                %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

partBName = ""

partBMusic = \relative c' {
    \set Staff.midiInstrument = "acoustic grand"
    \set Staff.instrumentName = \partBName
    \set Staff.shortInstrumentName = ""
    \clef treble
    % A
        \aaaaa
    }

partBChords = {
    \keepWithTag #'sectionA \globalChords
    }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                               Part C                                %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

partCName = ""

partCMusic = \relative c' {
    \set Staff.midiInstrument = "acoustic grand"
    \set Staff.instrumentName = \partCName
    \set Staff.shortInstrumentName = ""
    \clef treble
    % A
        \aaaaa
    }

partCChords = {
    \keepWithTag #'sectionA \globalChords
    }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                               Part D                                %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

partDName = ""

partDMusic = \relative c' {
    \set Staff.midiInstrument = "acoustic grand"
    \set Staff.instrumentName = \partDName
    \set Staff.shortInstrumentName = ""
    \clef treble
    % A
        \aaaaa
    }

partDChords = {
    \keepWithTag #'sectionA \globalChords
    }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                               Part E                                %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

partEName = ""

partEMusic = \relative c' {
    \set Staff.midiInstrument = "acoustic grand"
    \set Staff.instrumentName = \partEName
    \set Staff.shortInstrumentName = ""
    \clef treble
    % A
        \aaaaa
    }

partEChords = {
    \keepWithTag #'sectionA \globalChords
    }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                               Part F                                %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

partFName = ""

partFMusic = \relative c' {
    \set Staff.midiInstrument = "acoustic grand"
    \set Staff.instrumentName = \partFName
    \set Staff.shortInstrumentName = ""
    \clef treble
    % A
        \aaaaa
    }

partFChords = {
    \keepWithTag #'sectionA \globalChords
    }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                               Part G                                %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

partGName = ""

partGMusic = \relative c' {
    \set Staff.midiInstrument = "acoustic grand"
    \set Staff.instrumentName = \partGName
    \set Staff.shortInstrumentName = ""
    \clef treble
    % A
        \aaaaa
    }

partGChords = {
    \keepWithTag #'sectionA \globalChords
    }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                               Part H                                %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

partHName = ""

partHMusic = \relative c' {
    \set Staff.midiInstrument = "acoustic grand"
    \set Staff.instrumentName = \partHName
    \set Staff.shortInstrumentName = ""
    \clef treble
    % A
        \aaaaa
    }

partHChords = {
    \keepWithTag #'sectionA \globalChords
    }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                               Part I                                %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

partIName = ""

partIMusic = \relative c' {
    \set Staff.midiInstrument = "acoustic grand"
    \set Staff.instrumentName = \partIName
    \set Staff.shortInstrumentName = ""
    \clef treble
    % A
        \aaaaa
    }

partIChords = {
    \keepWithTag #'sectionA \globalChords
    }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                               Part J                                %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

partJName = ""

partJMusic = \relative c' {
    \set Staff.midiInstrument = "acoustic grand"
    \set Staff.instrumentName = \partJName
    \set Staff.shortInstrumentName = ""
    \clef treble
    % A
        \aaaaa
    }

partJChords = {
    \keepWithTag #'sectionA \globalChords
    }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                               Part K                                %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

partKName = ""

partKMusic = \relative c' {
    \set Staff.midiInstrument = "acoustic grand"
    \set Staff.instrumentName = \partKName
    \set Staff.shortInstrumentName = ""
    \clef treble
    % A
        \aaaaa
    }

partKChords = {
    \keepWithTag #'sectionA \globalChords
    }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                               Part L                                %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

partLName = ""

partLMusic = \relative c' {
    \set Staff.midiInstrument = "acoustic grand"
    \set Staff.instrumentName = \partLName
    \set Staff.shortInstrumentName = ""
    \clef treble
    % A
        \aaaaa
    }

partLChords = {
    \keepWithTag #'sectionA \globalChords
    }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                               Part M                                %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

partMName = ""

partMMusic = \relative c' {
    \set Staff.midiInstrument = "acoustic grand"
    \set Staff.instrumentName = \partMName
    \set Staff.shortInstrumentName = ""
    \clef treble
    % A
        \aaaaa
    }

partMChords = {
    \keepWithTag #'sectionA \globalChords
    }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                               Part N                                %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

partNName = ""

partNMusic = \relative c' {
    \set Staff.midiInstrument = "acoustic grand"
    \set Staff.instrumentName = \partNName
    \set Staff.shortInstrumentName = ""
    \clef treble
    % A
        \aaaaa
    }

partNChords = {
    \keepWithTag #'sectionA \globalChords
    }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                               Part O                                %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

partOName = ""

partOMusic = \relative c' {
    \set Staff.midiInstrument = "acoustic grand"
    \set Staff.instrumentName = \partOName
    \set Staff.shortInstrumentName = ""
    \clef treble
    % A
        \aaaaa
    }

partOChords = {
    \keepWithTag #'sectionA \globalChords
    }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                               Part P                                %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

partPName = ""

partPMusic = \relative c' {
    \set Staff.midiInstrument = "acoustic grand"
    \set Staff.instrumentName = \partPName
    \set Staff.shortInstrumentName = ""
    \clef treble
    % A
        \aaaaa
    }

partPChords = {
    \keepWithTag #'sectionA \globalChords
    }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                               Part Q                                %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

partQName = ""

partQMusic = \relative c' {
    \set Staff.midiInstrument = "acoustic grand"
    \set Staff.instrumentName = \partQName
    \set Staff.shortInstrumentName = ""
    \clef treble
    % A
        \aaaaa
    }

partQChords = {
    \keepWithTag #'sectionA \globalChords
    }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                               Part R                                %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

partRName = ""

partRMusic = \relative c' {
    \set Staff.midiInstrument = "acoustic grand"
    \set Staff.instrumentName = \partRName
    \set Staff.shortInstrumentName = ""
    \clef treble
    % A
        \aaaaa
    }

partRChords = {
    \keepWithTag #'sectionA \globalChords
    }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                               Part S                                %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

partSName = ""

partSMusic = \relative c' {
    \set Staff.midiInstrument = "acoustic grand"
    \set Staff.instrumentName = \partSName
    \set Staff.shortInstrumentName = ""
    \clef treble
    % A
        \aaaaa
    }

partSChords = {
    \keepWithTag #'sectionA \globalChords
    }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                               Part T                                %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

partTName = ""

partTMusic = \relative c' {
    \set Staff.midiInstrument = "acoustic grand"
    \set Staff.instrumentName = \partTName
    \set Staff.shortInstrumentName = ""
    \clef treble
    % A
        \aaaaa
    }

partTChords = {
    \keepWithTag #'sectionA \globalChords
    }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                               Part U                                %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

partUName = ""

partUMusic = \relative c' {
    \set Staff.midiInstrument = "acoustic grand"
    \set Staff.instrumentName = \partUName
    \set Staff.shortInstrumentName = ""
    \clef treble
    % A
        \aaaaa
    }

partUChords = {
    \keepWithTag #'sectionA \globalChords
    }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                               Part V                                %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

partVName = ""

partVMusic = \relative c' {
    \set Staff.midiInstrument = "acoustic grand"
    \set Staff.instrumentName = \partVName
    \set Staff.shortInstrumentName = ""
    \clef treble
    % A
        \aaaaa
    }

partVChords = {
    \keepWithTag #'sectionA \globalChords
    }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                               Part W                                %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

partWName = ""

partWMusic = \relative c' {
    \set Staff.midiInstrument = "acoustic grand"
    \set Staff.instrumentName = \partWName
    \set Staff.shortInstrumentName = ""
    \clef treble
    % A
        \aaaaa
    }

partWChords = {
    \keepWithTag #'sectionA \globalChords
    }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                               Part X                                %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

partXName = ""

partXMusic = \relative c' {
    \set Staff.midiInstrument = "acoustic grand"
    \set Staff.instrumentName = \partXName
    \set Staff.shortInstrumentName = ""
    \clef treble
    % A
        \aaaaa
    }

partXChords = {
    \keepWithTag #'sectionA \globalChords
    }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                               Part Y                                %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

partYName = ""

partYMusic = \relative c' {
    \set Staff.midiInstrument = "acoustic grand"
    \set Staff.instrumentName = \partYName
    \set Staff.shortInstrumentName = ""
    \clef treble
    % A
        \aaaaa
    }

partYChords = {
    \keepWithTag #'sectionA \globalChords
    }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                               Part Z                                %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

partZName = ""

partZMusic = \relative c' {
    \set Staff.midiInstrument = "acoustic grand"
    \set Staff.instrumentName = \partZName
    \set Staff.shortInstrumentName = ""
    \clef treble
    % A
        \aaaaa
    }

partZChords = {
    \keepWithTag #'sectionA \globalChords
    }
