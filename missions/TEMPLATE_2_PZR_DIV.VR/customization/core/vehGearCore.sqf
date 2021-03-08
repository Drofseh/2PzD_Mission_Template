#define random(MIN, MAX) \
([MIN, MAX] call Olsen_FW_FNC_RandomRange)

params ["_vehicle", "_type"];

if (!local _vehicle) exitWith {};

if (!(_type isEqualType []) || {count _type < 2}) exitWith {
    //error message about how _type isn't a valid array
};

private _loadoutName = _type select 0;
if !(_loadoutName isEqualType "") exitWith {
    //error message about how _loadoutName isn't a valid string
};

private _loadout = _type select 1;
if !(_type isEqualType {}) exitWith {
    //error message about how _type isn't a valid loadout
};

Olsen_FW_MissionLoadoutsVehicle pushBackUnique _loadoutName;

_vehicle setVariable ["BIS_enableRandomization", false];
_vehicle setVariable ["FW_Loadout", _type, true];

#include "..\vehicleGearSettings.sqf" //DO NOT REMOVE

_vehicle call Olsen_FW_FNC_RemoveAllVehicleGear;

Olsen_FW_FNC_AddItemVehicle = {([_vehicle, _loadoutName] + _this) call Olsen_FW_FNC_AddItemVehicleOrg;};
Olsen_FW_FNC_AddItemVehicleRandom = {([_vehicle, _loadoutName] + [_this]) call Olsen_FW_FNC_AddItemVehicleRandomOrg;};

_vehicle call _loadout;
