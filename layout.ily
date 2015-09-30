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
%%%%%                              Parts                                  %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#(ly:set-option 'relative-includes #t)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                             Include                                 %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\include "music.ily"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                           Part Layouts                              %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

partA = {
    \transpose c c {
        \transpose c c {
            <<
            \partAChords
            \new Staff { 
                << \global \partAMusic >>
                }
            >>
            }
        }
    }

partB = {
    \transpose c c {
        \transpose c c {
            <<
            \partBChords 
            \new Staff { 
                << \global \partBMusic >>
                }
            >>
            }
        }
    }

partC = {
    \transpose c c {
        \transpose c c {
            <<
            \partCChords 
            \new Staff { 
                << \global \partCMusic >>
                }
            >>
            }
        }
    }

partD = {
    \transpose c c {
        \transpose c c {
            <<
            \partDChords 
            \new Staff { 
                << \global \partDMusic >>
                }
            >>
            }
        }
    }

partE = {
    \transpose c c {
        \transpose c c {
            <<
            \partEChords 
            \new Staff { 
                << \global \partEMusic >>
                }
            >>
            }
        }
    }

partF = {
    \transpose c c {
        \transpose c c {
            <<
            \partFChords 
            \new Staff { 
                << \global \partFMusic >>
                }
            >>
            }
        }
    }

partG = {
    \transpose c c {
        \transpose c c {
            <<
            \partGChords 
            \new Staff { 
                << \global \partGMusic >>
                }
            >>
            }
        }
    }

partH = {
    \transpose c c {
        \transpose c c {
            <<
            \partHChords 
            \new Staff { 
                << \global \partHMusic >>
                }
            >>
            }
        }
    }

partI = {
    \transpose c c {
        \transpose c c {
            <<
            \partIChords 
            \new Staff { 
                << \global \partIMusic >>
                }
            >>
            }
        }
    }

partJ = {
    \transpose c c {
        \transpose c c {
            <<
            \partJChords 
            \new Staff { 
                << \global \partJMusic >>
                }
            >>
            }
        }
    }

partK = {
    \transpose c c {
        \transpose c c {
            <<
            \partKChords 
            \new Staff { 
                << \global \partKMusic >>
                }
            >>
            }
        }
    }

partL = {
    \transpose c c {
        \transpose c c {
            <<
            \partLChords 
            \new Staff { 
                << \global \partLMusic >>
                }
            >>
            }
        }
    }

partM = {
    \transpose c c {
        \transpose c c {
            <<
            \partMChords 
            \new Staff { 
                << \global \partMMusic >>
                }
            >>
            }
        }
    }

partN = {
    \transpose c c {
        \transpose c c {
            <<
            \partNChords 
            \new Staff { 
                << \global \partNMusic >>
                }
            >>
            }
        }
    }

partO = {
    \transpose c c {
        \transpose c c {
            <<
            \partOChords 
            \new Staff { 
                << \global \partOMusic >>
                }
            >>
            }
        }
    }

partP = {
    \transpose c c {
        \transpose c c {
            <<
            \partPChords 
            \new Staff { 
                << \global \partPMusic >>
                }
            >>
            }
        }
    }

partQ = {
    \transpose c c {
        \transpose c c {
            <<
            \partQChords 
            \new Staff { 
                << \global \partQMusic >>
                }
            >>
            }
        }
    }

partR = {
    \transpose c c {
        \transpose c c {
            <<
            \partRChords 
            \new Staff { 
                << \global \partRMusic >>
                }
            >>
            }
        }
    }

partS = {
    \transpose c c {
        \transpose c c {
            <<
            \partSChords 
            \new Staff { 
                << \global \partSMusic >>
                }
            >>
            }
        }
    }

partT = {
    \transpose c c {
        \transpose c c {
            <<
            \partTChords 
            \new Staff { 
                << \global \partTMusic >>
                }
            >>
            }
        }
    }

partU = {
    \transpose c c {
        \transpose c c {
            <<
            \partUChords 
            \new Staff { 
                << \global \partUMusic >>
                }
            >>
            }
        }
    }

partV = {
    \transpose c c {
        \transpose c c {
            <<
            \partVChords 
            \new Staff { 
                << \global \partVMusic >>
                }
            >>
            }
        }
    }

partW = {
    \transpose c c {
        \transpose c c {
            <<
            \partWChords 
            \new Staff { 
                << \global \partWMusic >>
                }
            >>
            }
        }
    }

partX = {
    \transpose c c {
        \transpose c c {
            <<
            \partXChords 
            \new Staff { 
                << \global \partXMusic >>
                }
            >>
            }
        }
    }

partY = {
    \transpose c c {
        \transpose c c {
            <<
            \partYChords 
            \new Staff { 
                << \global \partYMusic >>
                }
            >>
            }
        }
    }

partZ = {
    \transpose c c {
        \transpose c c {
            <<
            \partZChords 
            \new Staff { 
                << \global \partZMusic >>
                }
            >>
            }
        }
    }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                           Score Layout                              %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

scoreStaves = {
    \transpose c c {
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
        % \globalChords
        \partQ
        \partR
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
    }
