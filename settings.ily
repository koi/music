% settings.ily: Settings for all parts and the score.
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
%%%%%                               Settings                              %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Set the global transposition here. This will transpose the score, individual
% parts, and midi output. 'inputKey' is usually the concert key, or the key that
% you enter the music in. 'finalKey' is the key to transpose into.

inputKey = c
finalKey = c

% Sets the style of the transposition in the score. Set as 'concert' to have all
% parts in concert pitch or 'transposed' to have all parts in their appropriate
% transposed key as set in the `layout.ily` file.

scoreStyle = "concert"
