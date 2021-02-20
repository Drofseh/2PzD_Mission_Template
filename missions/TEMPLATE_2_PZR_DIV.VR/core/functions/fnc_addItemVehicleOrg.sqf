/*
 * Author: Olsen
 *
 * Add item to vehicle.
 *
 * Arguments:
 * 0: vehicle <object>
 * 1: loadout name <string>
 * 2: item <string>
 * 3: amount <number> (optional)
 *
 * Return Value:
 * nothing
 *
 * Public: No
 */

params ["_vehicle", "_loadoutType", "_item", "_amount"];

if (isNil "_amount") then {
    _amount = 1;
};

private _badData = false;

// check if params are valid
if (typeName _item != "STRING") then {
    _badData = true;
    private _message = format ["Item '%2' is not a string in this loadout: %1", str _this, str _item];
    _message call Olsen_FW_FNC_DebugMessage;
    diag_log _message;
} else {
    if !([_item, _unit] call Olsen_FW_FNC_checkClassname) then {
        _badData = true;
        private _message = format ["Item '%2' is not a valid classname in this loadout: %1", str _this, str _item];
        _message call Olsen_FW_FNC_DebugMessage;
        diag_log _message;
    };
};
if (typeName _amount != "SCALAR") then {
    _badData = true;
    private _message = format ["Item amount '%2' is not a number in this loadout: %1", str _this, str _amount];
    _message call Olsen_FW_FNC_DebugMessage;
    diag_log _message;
};

if (_badData) exitWith {};

for "_x" from 1 to _amount do {
    if (_vehicle canAdd _item) then {
        if (((_item call BIS_fnc_itemType) select 1) isEqualTo "Backpack") then {
            _vehicle addBackpackCargoGlobal [_item, 1];
        } else {
            _vehicle addItemCargoGlobal [_item, 1];
        };
    } else {
        (format ["Olsen_FW_FNC_AddItemVehicle: Warning couldn't fit %1, in %2, case %3", _item, _vehicle, _loadoutType]) call Olsen_FW_FNC_DebugMessage;
    };
};
