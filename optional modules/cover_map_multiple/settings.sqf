// ===== MUST NOT BE USED AT THE SAME TIME AS THE Cover_Map MODULE

//This module covers the area on the map outside of the AO Marker. The first AO marker in the array is the initial AO shown to all players. 
//Specific units can be given the ability to switch AOs with 
/*
this setvariable ["HasAltMaps",true];
*/
//You can script an AO change using [MARKERNAMEINQUOTES,ISCENTERED,ZOOMLEVEL,NAME VISIBLE IN SELF INTERACT, AO NUMBER] call Olsen_FW_FNC_AOCoverAndCenterMap;
//You could have different groups/teams with different AOs, or a briefing AO different from specific AOs in game if needed.

/*
_AOMarkers = [
    ["markerNameInQuotes",isCentred,zoomLevel,"Name in Interaction Menu", AO_Number],
    ["markerNameInQuotes",isCentred,zoomLevel,"Name in Interaction Menu", AO_Number]
];
*/

/*
_AOMarkers = [
    ["AOMarker_1",true,0.3,"Southern Valley",1],
    ["AOMarker_2",true,0.1,"Le Port",2],
    ["AOMarker_3",true,0.3,"Moray",3]
];
*/

// default maps
_AOMarkers = [
    ["AO",true,0.3,"Normal",1],
    ["AO_1",true,0.1,"Alternate Map",2]
];

// additional possibilities for side based maps by checking playerSide
/*
if (playerSide isEqualTo west) then {
    _AOMarkers = [
        ["AO",true,0.3,"Normal",1],
        ["AO_1",true,0.1,"Alternate Blufor",2]
    ];
};

if (playerSide isEqualTo independent) then {
    _AOMarkers = [
        ["AO",true,0.3,"Normal",1],
        ["AO_2",true,0.1,"Alternate Indfor",2]
    ];
};

if (playerSide isEqualTo east) then {
    _AOMarkers = [
        ["AO",true,0.3,"Normal",1],
        ["AO_2",true,0.1,"Alternate Opfor",2]
    ];
};

if (playerSide isEqualTo civilian) then {
    _AOMarkers = [
        ["AO",true,0.3,"Normal",1],
        ["AO_2",true,0.1,"Alternate Civ",2]
    ];
};
*/
