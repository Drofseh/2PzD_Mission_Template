["Start on team color", "Allows the mission maker to set the team colors in squads on start.", "Olsen"] call Olsen_FW_FNC_RegisterModule;

if (hasInterface) then {

    [{
        private ["_color"];
        _color = player getVariable ["FW_TeamColor", "NONE"];

        if (_color != "NONE") then {
            ["CBA_teamColorChanged", [player, _color]] call CBA_fnc_globalEvent;
            player setVariable ["FW_TeamColor", nil, false];
        };
    }, [], 0.01] call CBA_fnc_waitAndExecute;

};
