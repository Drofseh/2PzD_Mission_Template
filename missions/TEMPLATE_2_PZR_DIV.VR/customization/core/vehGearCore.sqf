#define random(MIN, MAX) \
([MIN, MAX] call Olsen_FW_FNC_RandomRange)

private ["_vehicle", "_type"];

_vehicle = _this select 0;
_type = _this select 1;

if (!local _vehicle) exitWith {};

Olsen_FW_FNC_AddItemVehicle = {([_vehicle, _type] + _this) call Olsen_FW_FNC_AddItemVehicleOrg;};
Olsen_FW_FNC_AddItemVehicleRandom = {([_vehicle, _type] + [_this]) call Olsen_FW_FNC_AddItemVehicleRandomOrg;};