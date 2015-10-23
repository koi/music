% layout.ily: Set staff layouts for parts and score, for inclusion within a
%             layout template.
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
%%%%%                                Parts                                %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#(ly:set-option 'relative-includes #t)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                               Include                               %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\include "music.ily"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                            Staff Layouts                            %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

partAStaff = {
    <<
    \tag #'partChords { \partAChords }
    \new Staff { 
        << \global \partAMusic >>
        }
    >>
    }

partBStaff = {
    <<
    \tag #'partChords { \partBChords }
    \new Staff { 
        << \global \partBMusic >>
        }
    >>
    }

partCStaff = {
    <<
    \tag #'partChords { \partCChords }
    \new Staff { 
        << \global \partCMusic >>
        }
    >>
    }

partDStaff = {
    <<
    \tag #'partChords { \partDChords }
    \new Staff { 
        << \global \partDMusic >>
        }
    >>
    }

partEStaff = {
    <<
    \tag #'partChords { \partEChords }
    \new Staff { 
        << \global \partEMusic >>
        }
    >>
    }

partFStaff = {
    <<
    \tag #'partChords { \partFChords }
    \new Staff { 
        << \global \partFMusic >>
        }
    >>
    }

partGStaff = {
    <<
    \tag #'partChords { \partGChords }
    \new Staff { 
        << \global \partGMusic >>
        }
    >>
    }

partHStaff = {
    <<
    \tag #'partChords { \partHChords }
    \new Staff { 
        << \global \partHMusic >>
        }
    >>
    }

partIStaff = {
    <<
    \tag #'partChords { \partIChords }
    \new Staff { 
        << \global \partIMusic >>
        }
    >>
    }

partJStaff = {
    <<
    \tag #'partChords { \partJChords }
    \new Staff { 
        << \global \partJMusic >>
        }
    >>
    }

partKStaff = {
    <<
    \tag #'partChords { \partKChords }
    \new Staff { 
        << \global \partKMusic >>
        }
    >>
    }

partLStaff = {
    <<
    \tag #'partChords { \partLChords }
    \new Staff { 
        << \global \partLMusic >>
        }
    >>
    }

partMStaff = {
    <<
    \tag #'partChords { \partMChords }
    \new Staff { 
        << \global \partMMusic >>
        }
    >>
    }

partNStaff = {
    <<
    \tag #'partChords { \partNChords }
    \new Staff { 
        << \global \partNMusic >>
        }
    >>
    }

partOStaff = {
    <<
    \tag #'partChords { \partOChords }
    \new Staff { 
        << \global \partOMusic >>
        }
    >>
    }

partPStaff = {
    <<
    \tag #'partChords { \partPChords }
    \new Staff { 
        << \global \partPMusic >>
        }
    >>
    }

partQStaff = {
    <<
    \tag #'partChords { \partQChords }
    \new Staff { 
        << \global \partQMusic >>
        }
    >>
    }

partRStaff = {
    <<
    \tag #'partChords { \partRChords }
    \new Staff { 
        << \global \partRMusic >>
        }
    >>
    }

partSStaff = {
    <<
    \tag #'partChords { \partSChords }
    \new Staff { 
        << \global \partSMusic >>
        }
    >>
    }

partTStaff = {
    <<
    \tag #'partChords { \partTChords }
    \new Staff { 
        << \global \partTMusic >>
        }
    >>
    }

partUStaff = {
    <<
    \tag #'partChords { \partUChords }
    \new Staff { 
        << \global \partUMusic >>
        }
    >>
    }

partVStaff = {
    <<
    \tag #'partChords { \partVChords }
    \new Staff { 
        << \global \partVMusic >>
        }
    >>
    }

partWStaff = {
    <<
    \tag #'partChords { \partWChords }
    \new Staff { 
        << \global \partWMusic >>
        }
    >>
    }

partXStaff = {
    <<
    \tag #'partChords { \partXChords }
    \new Staff { 
        << \global \partXMusic >>
        }
    >>
    }

partYStaff = {
    <<
    \tag #'partChords { \partYChords }
    \new Staff { 
        << \global \partYMusic >>
        }
    >>
    }

partZStaff = {
    <<
    \tag #'partChords { \partZChords }
    \new Staff { 
        << \global \partZMusic >>
        }
    >>
    }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                                Parts                                %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

partA = {
    \tag #'concert {
        \partAStaff
        }
    \tag #'transposed {
        \transpose c c {
            \partAStaff
            }
        }
    }

partB = {
    \tag #'concert {
        \partBStaff
        }
    \tag #'transposed {
        \transpose c c {
            \partBStaff
            }
        }
    }

partC = {
    \tag #'concert {
        \partCStaff
        }
    \tag #'transposed {
        \transpose c c {
            \partCStaff
            }
        }
    }

partD = {
    \tag #'concert {
        \partDStaff
        }
    \tag #'transposed {
        \transpose c c {
            \partDStaff
            }
        }
    }

partE = {
    \tag #'concert {
        \partEStaff
        }
    \tag #'transposed {
        \transpose c c {
            \partEStaff
            }
        }
    }

partF = {
    \tag #'concert {
        \partFStaff
        }
    \tag #'transposed {
        \transpose c c {
            \partFStaff
            }
        }
    }

partG = {
    \tag #'concert {
        \partGStaff
        }
    \tag #'transposed {
        \transpose c c {
            \partGStaff
            }
        }
    }

partH = {
    \tag #'concert {
        \partHStaff
        }
    \tag #'transposed {
        \transpose c c {
            \partHStaff
            }
        }
    }

partI = {
    \tag #'concert {
        \partIStaff
        }
    \tag #'transposed {
        \transpose c c {
            \partIStaff
            }
        }
    }

partJ = {
    \tag #'concert {
        \partJStaff
        }
    \tag #'transposed {
        \transpose c c {
            \partJStaff
            }
        }
    }

partK = {
    \tag #'concert {
        \partKStaff
        }
    \tag #'transposed {
        \transpose c c {
            \partKStaff
            }
        }
    }

partL = {
    \tag #'concert {
        \partLStaff
        }
    \tag #'transposed {
        \transpose c c {
            \partLStaff
            }
        }
    }

partM = {
    \tag #'concert {
        \partMStaff
        }
    \tag #'transposed {
        \transpose c c {
            \partMStaff
            }
        }
    }

partN = {
    \tag #'concert {
        \partNStaff
        }
    \tag #'transposed {
        \transpose c c {
            \partNStaff
            }
        }
    }

partO = {
    \tag #'concert {
        \partOStaff
        }
    \tag #'transposed {
        \transpose c c {
            \partOStaff
            }
        }
    }

partP = {
    \tag #'concert {
        \partPStaff
        }
    \tag #'transposed {
        \transpose c c {
            \partPStaff
            }
        }
    }

partQ = {
    \tag #'concert {
        \partQStaff
        }
    \tag #'transposed {
        \transpose c c {
            \partQStaff
            }
        }
    }

partR = {
    \tag #'concert {
        \partRStaff
        }
    \tag #'transposed {
        \transpose c c {
            \partRStaff
            }
        }
    }

partS = {
    \tag #'concert {
        \partSStaff
        }
    \tag #'transposed {
        \transpose c c {
            \partSStaff
            }
        }
    }

partT = {
    \tag #'concert {
        \partTStaff
        }
    \tag #'transposed {
        \transpose c c {
            \partTStaff
            }
        }
    }

partU = {
    \tag #'concert {
        \partUStaff
        }
    \tag #'transposed {
        \transpose c c {
            \partUStaff
            }
        }
    }

partV = {
    \tag #'concert {
        \partVStaff
        }
    \tag #'transposed {
        \transpose c c {
            \partVStaff
            }
        }
    }

partW = {
    \tag #'concert {
        \partWStaff
        }
    \tag #'transposed {
        \transpose c c {
            \partWStaff
            }
        }
    }

partX = {
    \tag #'concert {
        \partXStaff
        }
    \tag #'transposed {
        \transpose c c {
            \partXStaff
            }
        }
    }

partY = {
    \tag #'concert {
        \partYStaff
        }
    \tag #'transposed {
        \transpose c c {
            \partYStaff
            }
        }
    }

partZ = {
    \tag #'concert {
        \partZStaff
        }
    \tag #'transposed {
        \transpose c c {
            \partZStaff
            }
        }
    }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                             Score Layout                            %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

scoreStaves = {
    <<
    \new StaffGroup 
        << 
        \new GrandStaff
            <<
            \partA
            \partB
            >>
        \new GrandStaff
            <<
            \partC
            \partD
            >>
        \partE
        \partF
        \partG
        \partH
        >>
    \new StaffGroup
        <<
        \partI
        \partJ
        \partK
        \partL
        \partO
        \partP
        >>
    \globalChords
    \removeWithTag #'partChords \partQ
    \removeWithTag #'partChords \partR
    \partS
    \partT
    \new StaffGroup
        <<
        \partU
        \partV
        >>
    \new StaffGroup
        <<
        \new GrandStaff
            <<
            \partW
            \partX
            >>
        \partY
        \partZ
        >>
    >>
    }
