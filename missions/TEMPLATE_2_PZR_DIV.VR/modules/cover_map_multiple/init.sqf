["Cover Map Multiple AOs", "Covers map except specified area, allows switching between multiple AOs", "PIZZADOX"] call FNC_RegisterModule;

#include "settings.sqf"
//contains _AOMarkers array

//initial marker array define
FW_map_cover = [];
FW_map_currentAO = 0;

//make all AOmarkers invisible
{
    (_x select 0) setMarkerAlphaLocal 0;
} foreach _AOMarkers;

//Add self interact option on map to switch AOs
if (count _AOMarkers > 1) then {
    [{!isNull player}, {
        params ["_AOMarkers"];
        private _MapChangeMenu = ["MapChangeMenu", "Switch Map", "", {}, {true}] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","ACE_Equipment"], _MapChangeMenu] call ace_interact_menu_fnc_addActionToObject;
        {
            call compile format ["
                private _MapChangeAction%1 = ['switch_MapAO', 'Switch Map to %2', '', {%4 call FNC_AOCoverAndCenterMap;}, {(visibleMap) && (FW_map_currentAO != %3) && (player getvariable ['HasAltMaps',false])}] call ace_interact_menu_fnc_createAction;
                [player, 1, ['ACE_SelfActions','ACE_Equipment','MapChangeMenu'], _MapChangeAction%1] call ace_interact_menu_fnc_addActionToObject;
            ",_forEachIndex, _x select 3, _x select 4, _x];
        } foreach _AOMarkers;
    }, [_AOMarkers]] call CBA_fnc_waitUntilAndExecute;
};

(_AOMarkers select 0) call FNC_AOCoverAndCenterMap;
