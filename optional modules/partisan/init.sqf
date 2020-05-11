["Partisan", "Allows players on a side to blend in with enemy AI as long as they don't do anything suspicious or hostile.", "Wilhelm Haas (Drofseh)"] call Olsen_FW_FNC_RegisterModule;

#include "settings.sqf"
#include "init\FNC_Partisan_Main.sqf"
#include "init\FNC_Partisan_ZeusPunishLimiter.sqf"

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

    if (!isNil "God" && {God isEqualTo player || {group player isEqualTo group God}}) then {
        call Olsen_FW_FNC_Partisan_ZeusPunishLimiter;
    };

    //===== Add ID Card action
    _conditionIdCard = {true};
    _statementIdCard = {
        if ("Wallet_ID" in (vestitems player + uniformitems player + backpackitems player)) then {
            _selfMessage = format ["You have shown your ID card to %1.", name _target];
            _outMessage = format ["%1 shows you a valid ID card.", name player];
            [[_selfMessage], true] call cba_fnc_notify;
            [
                [_outMessage], true
            ] remoteExec ["cba_fnc_notify", _target];
        } else {
            "You don't have any ID with you." call cba_fnc_notify;
        };
    };
    _actionIdCard = ["Show ID Card","Show ID Card","",_statementIdCard,_conditionIdCard] call ace_interact_menu_fnc_createAction;
    ["Man", 0, ["ACE_MainActions"], _actionIdCard, true] call ace_interact_menu_fnc_addActionToClass;

    //===== Add Secret Partisan Sign action
    _conditionHandSign = {true};
    _statementHandSign = {
        _selfMessage = "";
        _outMessage = "";

        if (playerSide in Partisan_sidePartisan) then {
            _selfMessage = format ["You have shown %1 the secret hand sign your group uses.", name _target];
        } else {
            _selfMessage = "You make a hand sign but you don't think it's correct";
        };

        if ((_target getVariable ["FW_OriginalSide", side _target]) isEqualTo playerSide)) then {
            _outMessage = format ["%1 makes the correct hand sign.", name player];
        } else {
            _outMessage = format ["%1 makes a hand sign but it doesn't look right.", name player];
        };

        [[_selfMessage], true] call cba_fnc_notify;

        [
            [_outMessage], true
        ] remoteExec ["cba_fnc_notify", _target];
    };
    _actionHandSign = ["Show Secret Hand Sign","Show Secret Hand Sign","",_statementHandSign,_conditionHandSign] call ace_interact_menu_fnc_createAction;
    ["Man", 0, ["ACE_MainActions"], _actionHandSign, true] call ace_interact_menu_fnc_addActionToClass;

    if (!isNil "God" && {God isEqualTo player || {group player isEqualTo group God}}) then {
        [{
            call Olsen_FW_FNC_Partisan_ZeusPunishLimiter;
        },[],1] call CBA_fnc_waitAndExecute;
    };
};
