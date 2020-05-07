["Partisan", "Allows players on a side to blend in with enemy AI as long as they don't do anything suspicious or hostile.", "Wilhelm Haas (Drofseh)"] call Olsen_FW_FNC_RegisterModule;

#include "settings.sqf"

if !((typeName Partisan_sidePartisan) isEqualTo "ARRAY") then {
    Partisan_sidePartisan = [Partisan_sidePartisan];
};
{
    if !((typeName _x) isEqualTo "STRING") then {
        
        Partisan_blacklistVehicle = set [index, str _x];
    };
} forEach Partisan_blacklistVehicle;


["CAManBase", "Killed", {
    params ["_unit", "_killer", "_lastDamageSource","_unitSide","_killerSide","_clientID"];

    _lastDamageSource = _unit getVariable "ace_medical_lastDamageSource";

    if (_unit isEqualTo _killer) then {
        _killer = _lastDamageSource;
    };

    _unitSide = side _unit;
    _killerSide = side _killer;

    if (_unitSide isEqualTo _killerSide) exitWith {};

    _clientID = owner _killer;

    if (_killerSide in (Partisan_sidePartisan + [civilian])) then {
        [[_killer],{
            params ["_killer"];

            private _currentNotoriety = _killer getVariable ["Partisan Notoriety", 0];
            _killer setVariable ["Partisan Notoriety", _currentNotoriety + 5];

        }] remoteExec ["call",_clientID];
    };
}] call CBA_fnc_addClassEventHandler;

if (hasInterface) then {

    #include "init\briefing.sqf"

    if (playerSide in Partisan_sidePartisan) then {

        #include "init\actionsPartisan.sqf"
        #include "init\FNC_Partisan_Main.sqf"

        player setVariable ["Partisan Safety Rating", 0];
        player setVariable ["Partisan Notoriety", 0, true];

        player addEventHandler ["Killed", {
            player setVariable ["Partisan Safety Rating", 0];
            player setVariable ["Partisan Notoriety", 0, true];
        }];

        player addEventHandler ["Fired", {
            private _currentRating = player getVariable ["Partisan Safety Rating", 0];
            private _currentNotoriety = player getVariable ["Partisan Notoriety", 0];
            player setVariable ["Partisan Safety Rating", _currentRating - (10 * _currentNotoriety)];
        }];

        ["ace_throwableThrown",{
                private _currentRating = player getVariable ["Partisan Safety Rating", 0];
                private _currentNotoriety = player getVariable ["Partisan Notoriety", 0];
                player setVariable ["Partisan Safety Rating", _currentRating - (10 * _currentNotoriety)];
        }] call CBA_fnc_addEventHandler;

        if (Partisan_startAtHome) then {
            createMarkerLocal ["homeMark", position player];
            "homeMark" setMarkerColorLocal "ColorBlue";
            "homeMark" setMarkerTextLocal "Your Home";
            "homeMark" setMarkerTypeLocal "hd_objective";
            "homeMark" setMarkerSizeLocal [1.5, 1.5];
        };

        {
            call Olsen_FW_FNC_Partisan_Main;
        }, [], 1] call CBA_fnc_waitAndExecute;
    };

    if (!(playerSide in Partisan_sidePartisan)) then {
        #include "init\actionsEnemy.sqf"
    };
};
