/*
 * Author: BlackHawk
 *
 * Check if item classname is valid.
 *
 * Arguments:
 * 0: classname <string>
 *
 * Return Value:
 * is valid <bool>
 *
 * Public: No
 */

params [
    ["_class", "", [""]],
    ["_unit", objNull, [objNull]],
    "_result"
];

if (_class isEqualTo "") exitWith {};

_result = (
       isClass (configfile >> "CfgWeapons" >> _class)
    || {isClass (configFile >> "CfgMagazines" >> _class)}
    || {isClass (configFile >> "CfgGlasses" >> _class)}
    || {isClass (configFile >> "CfgVehicles" >> _class)}
);

if (!_result) then {
    format ["Invalid classname given! - %1", _class] call Olsen_FW_FNC_DebugMessage;
    diag_log text format ["Invalid classname given! - %1", _class];

    [_class, {
        params ["_class","_msg"];
        _msg = format ["Framework has detected an invalid classname - '%1'! Mission will continue but some parts of gear will be missing.", str _class];
        if (!isNil "FW_missing_gear_found") then {
            if !(_class in FW_missing_gear_found) then {
                //systemChat _msg;
                diag_log text _msg;
                FW_missing_gear_found pushBackUnique _class;
            };
        } else {
            //systemChat _msg;
            diag_log text _msg;
            FW_missing_gear_found = [_class];
        };
    }] remoteExec ["call", 0, true];

    if (!isNull _unit) then {
        [_class, _unit] remoteExecCall ["Olsen_FW_FNC_makeUnitsList", 2, false];
    };
};

_result
