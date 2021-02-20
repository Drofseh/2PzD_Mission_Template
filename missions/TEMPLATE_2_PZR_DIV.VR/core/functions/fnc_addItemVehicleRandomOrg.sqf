/*
 * Author: Olsen
 *
 * Add random item to vehicle.
 *
 * Arguments:
 * 0: vehicle <object> and loadout name <string> <array>
 * 1: items <array>
 *
 * Return Value:
 * nothing
 *
 * Public: No
 */

params ["_vehicle", "_loadoutType", "_items"];

private _amount = 1;
private _position = "NONE";

if (count _items > 1) then {
    if (typeName (_items select 1) isEqualTo "ARRAY") then {
        _position = "ARRAY";
    } else {
        if (typeName (_items select 1) isEqualTo "SCALAR") then {
            _amount = _items select 1;
            _items = _items select 0;
        };
    };
};

private _randomPick = (_items select (([1, count _items] call Olsen_FW_FNC_RandomRange) - 1));

if (_position isEqualTo "ARRAY") then {
    if (typeName (_randomPick select 0) isEqualTo "ARRAY") then {
        {
            ([_vehicle, _loadoutType] + _x) call Olsen_FW_FNC_AddItemVehicleOrg;
        } forEach _randomPick;
    } else {
        ([_vehicle, _loadoutType] + _randomPick) call Olsen_FW_FNC_AddItemVehicleOrg;
    };
} else {
    [_vehicle, _loadoutType, _randomPick, _amount] call Olsen_FW_FNC_AddItemVehicleOrg;
};
