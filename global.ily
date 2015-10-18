% global.ily: Global space and formatting.
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
%%%%%                              Settings                               %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

defaults = {
    % Set global key, tempo, time
    \key c \major
    \tempo 4=76
    \time 4/4
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
