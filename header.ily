% header.ily: Match info into header block.
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
%%%%%                                Header                               %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Enter all project info text into info.ily. This file is only for custom
% markup formatting using those header values, and for matching them into their
% \header block counterpart. 
%
% The only info we enter here, that is not specified in info.ily, is our
% copyright markup and tagline selection.

\include "info.ily"

\header {
    dedication = \dedication
    title = \title
    subtitle = \subtitle
    subsubtitle = \subsubtitle
    opus = \opus

    composer = \composer
    arranger = \markup { "arr. " \arranger }
    poet = \poet
    piece = \piece
    meter = \meter

    owner = \owner
    enteredby = \enteredby
    maintainer = \maintainer
    maintainerEmail = \maintainerEmail

    catalog = \catalog
    year = \year

    copyright = \markup {
        Copyright © \year by \owner
        }
    tagline = \cAll
    }
