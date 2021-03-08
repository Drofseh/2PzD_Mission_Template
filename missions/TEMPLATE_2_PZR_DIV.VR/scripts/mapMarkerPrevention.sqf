// Automatically delete any map markers placed after the mission starts unless they are in the vehicle or direct channels.
// Informs the placing player that map markers are forbidden in that channel.

addMissionEventHandler ["MarkerCreated", {
    params ["_marker", "_channelNumber", "_owner"];

    if (CBA_missionTime > 1 && {_channelNumber in [0,1,2,3] && {_owner == player}}) then {
        if (!isNil "God" && {God isEqualTo _owner || {group _owner isEqualTo group God}}) exitWith {}; //Zeuses can always place new markers

        systemChat "Placing map markers during the mission is forbidden in this channel. You must use the Vehicle or Direct channels.";

        [
            {
                params ["_marker"];
                deleteMarker _marker;
            },
            [_marker],
            0.1
        ] call CBA_fnc_waitAndExecute;
    };
}];

/*
Olsen_FW_FNC_removeForbiddenMarkers = {
    [
        {call Olsen_FW_FNC_removeForbiddenMarkers},
        [],
        0.1
    ] call CBA_fnc_waitAndExecute;

    _userMarkerNumber = 0;
    {
        if (_x find "_USER_DEFINED" >= 0) then {
            _markerSelections = _x splitString "/";
            _userMarkerNumber = _userMarkerNumber + 1;

            if (_userMarkerNumber > FW_preplacedMarkerNumber) then {
                _delete = false;
                _channelID = _markerSelections select 2;

                switch (_channelID) do {
                    case "0" : { _delete = True };    // Global
                    case "1" : { _delete = True };    // Side
                    case "2" : { _delete = True };    // Command
                    case "3" : { _delete = True };    // Group
                    // case "4" : { _delete = True };    // Vehicle
                    // case "5" : { _delete = True };    // Direct
                };

                if (_delete) then {
                    //deleteMarker _x;
                    deleteMarkerLocal _x;
                    _netID = (((_markerSelections select 0) splitString "#") select 1);
                    if ((((netId player) splitString ":") select 0) == _netID) then {
                        systemChat "Placing map markers during play is forbidden in this channel";
                    };
                };
            };
        };
    } forEach allMapMarkers;
};

[
    {CBA_missionTime > 1},
    {
        _orignalUserMarkers = [];

        {
            if (_x find "_USER_DEFINED" > -1) then {
                _orignalUserMarkers pushBack _x;
            };
        } forEach allMapMarkers;

        FW_preplacedMarkerNumber = count _orignalUserMarkers;

        call Olsen_FW_FNC_removeForbiddenMarkers;
    },
    []
] call CBA_fnc_waitUntilAndExecute;
*/