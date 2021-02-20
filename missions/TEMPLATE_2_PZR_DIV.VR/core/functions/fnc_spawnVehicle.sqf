/*
 * Author: Sacher
 *
 * Spawns a Vehicle, if side is defined it will try to track it
 *
 * Arguments:
 * 0: className <String>
 * 1: position <Pos>
 * 2: side <side>
 *
 * Return Value:
 * unit Spawned <object>
 *
 * Public: Yes
 */

params ["_className","_position","_side","_unit"];

_unit = _className createVehicle _position;

if (!isNil "aCount_addEH") then {
    ["aCount_event_addEH", _unit] call CBA_fnc_serverEvent;
};

if (_unit getVariable ["FW_AssetName", ""] isEqualTo "") then {
    {
        if (_side == _x select 1) exitWith {

          _vehCfg = configOf _unit;

          if (isText(_vehCfg >> "displayName")) then {
            [_unit, getText(_vehCfg >> "displayName"), _x select 0] call Olsen_FW_FNC_TrackAsset;
          };

        };
    } forEach FW_Teams;
};

_unit
