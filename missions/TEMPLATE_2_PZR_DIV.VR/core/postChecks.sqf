if (hasInterface) then {

    private ["_modules", "_module"];

    _modules = "<font size='18'>Olsen Framework Modules</font><br/><br/>";

    for "_i" from 0 to count FW_Modules - 1 do {

        _module = FW_Modules select _i;

        _modules = format ["%1<font size='16'>%2</font><br/>Description: %3<br/>by %4", _modules, _module select 0, _module select 1, _module select 2];

        if (_i < count FW_Modules) then {

            _modules = format ["%1<br/><br/>", _modules];

        };
    };

    player createDiaryRecord ["FW_Menu", ["Modules", _modules]];

    private ["_respawnName", "_respawnPoint", "_temp", "_text"];

    if (FW_RespawnTickets > 0) then {

        _respawnName = toLower(format ["fw_%1_respawn", playerSide]);
        _respawnPoint = missionNamespace getVariable [_respawnName, objNull];

        if (isNull(_respawnPoint)) then {

            _temp = format ["Ticketed respawn feature:<br></br>Warning game logic ""%1"" does not exist.", _respawnName];
            _temp call Olsen_FW_FNC_DebugMessage;

        };

        _text = "respawns left";

        if (FW_RespawnTickets == 1) then {

            _text = "respawn left";

        };

        [{cutText [format ['%1 %2', FW_RespawnTickets, _this], 'PLAIN DOWN'];}, _text, 5] call CBA_fnc_waitAndExecute;

    };
};
