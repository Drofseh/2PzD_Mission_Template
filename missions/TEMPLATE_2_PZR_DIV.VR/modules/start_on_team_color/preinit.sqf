Olsen_FW_FNC_SetTeamColor = {

    params [
        ["_unit", objNull, [objNull]],
        ["_color", "", [""]]
    ];

    if (local _unit) then {
        _unit setVariable ["FW_TeamColor", _color, false];
    };

};
