/*
 * Author: Olsen && Wilhelm Haas (Drofseh)
 *
 * Add item to unit.
 *
 * Arguments:
 * 0: unit to add item to <object>
 * 1: name of loadout <string>
 * 2: item classname <string>
 * 3: amount <number> (optional)
 * 4: container ("uniform"/"vest"/"backpack") <string> (optional)
 *
 * Return Value:
 * nothing
 *
 * Public: No
 */

params ["_unit", "_loadoutType", "_item", "_amount", "_position"];

if (isNil "_amount") then {
    _amount = 1;
};

if (isNil "_position") then {
    _position = "none";
};

private _badData = false;

// check if params are valid
if (typeName _item != "STRING") then {
    _badData = true;
    private _message = format ["Item '%2' is not a string in this loadout: %1", str _this, str _item];
    _message call Olsen_FW_FNC_DebugMessage;
} else {
    if !([_item, _unit] call Olsen_FW_FNC_checkClassname) then {
        _badData = true;
        private _message = format ["Item '%2' is not a valid classname in this loadout: %1", str _this, str _item];
        _message call Olsen_FW_FNC_DebugMessage;
    };
};
if (typeName _amount != "SCALAR") then {
    _badData = true;
    private _message = format ["Item amount '%2' is not a number in this loadout: %1", str _this, str _amount];
    _message call Olsen_FW_FNC_DebugMessage;
};
if (typeName _position != "STRING") then {
    _badData = true;
    private _message = format ["Position '%2' is not a string in this loadout: %1", str _this, str _position];
    _message call Olsen_FW_FNC_DebugMessage;
} else {
    if (_position != "none" && {_position != "backpack"} && {_position != "vest"} && {_position != "uniform"}) then {
        _badData = true;
        private _message = format ["Position string '%2' is misspelled or invalid in this loadout: %1", str _this, str _position];
        _message call Olsen_FW_FNC_DebugMessage;
    };
};

if (_badData) exitWith {};

// try to add items
for "_i" from 1 to _amount do {
    private _succes = false;
    private _parents = [configFile >> "CFGweapons" >> _item, true] call BIS_fnc_returnParents;
    private _type = (_item call BIS_fnc_itemType) select 1;
    if ("ACRE_PRC" in _item) then {_type = "Radio"};

    private _uniform = uniform _unit;
    private _vest = vest _unit;
    private _backpack = backpack _unit;
    private _headgear = headgear _unit;
    private _goggles = goggles _unit;
    private _binocular = binocular _unit;

    //warn if adding additional items of a type where there should only be one
    private _message = "Olsen_FW_FNC_AddItem: Warning adding %5 '%1' to a unit that already has %5 '%6', originally intended for position %2, in %3, case %4";
    if (_position isEqualTo "none") then {
        _message = "Olsen_FW_FNC_AddItem: Warning adding %5 '%1' to a unit that already has %5 '%6', in %3, case %4";
    };
    switch true do {
        case (_type isEqualTo "Uniform" && {_uniform != ""}): {
            _message = format [_message, _item, _position, _unit, _loadoutType, _type, _uniform];
            _message call Olsen_FW_FNC_DebugMessage;
        };
        case (_type isEqualTo "Vest" && {_vest != ""}): {
            _message = format [_message, _item, _position, _unit, _loadoutType, _type, _vest];
            _message call Olsen_FW_FNC_DebugMessage;
        };
        case (_type isEqualTo "Backpack" && {_backpack != ""}): {
            _message = format [_message, _item, _position, _unit, _loadoutType, _type, _backpack];
            _message call Olsen_FW_FNC_DebugMessage;
        };
        case (_type isEqualTo "Headgear" && {_headgear != ""}): {
            _message = format [_message, _item, _position, _unit, _loadoutType, _type, _headgear];
            _message call Olsen_FW_FNC_DebugMessage;
        };
        case (_type isEqualTo "Glasses" && {_goggles != ""}): {
            if (_position isEqualTo "none") then {
                _message = "Olsen_FW_FNC_AddItem: Warning adding %5 '%1' to a unit that already has %5 '%6', in %3, case %4. If this unit is a player they may have glasses from their profile already.";
            };
            _message = format [_message, _item, _position, _unit, _loadoutType, _type, _goggles];
            _message call Olsen_FW_FNC_DebugMessage;
        };
        case (_type isEqualTo "Binocular" && {_binocular != ""}): {
            _message = format [_message, _item, _position, _unit, _loadoutType, _type, _binocular];
            _message call Olsen_FW_FNC_DebugMessage;
        };
        case (_type in ["Map", "GPS", "Compass", "Watch", "NVGoggles"] && {!([_unit, _type] call Olsen_FW_FNC_CanLinkItem)}): {
            _message = "Olsen_FW_FNC_AddItem: Warning adding %5 '%1' to a unit that already has a %5, originally intended for position %2, in %3, case %4";
            if (_position isEqualTo "none") then {
                _message = "Olsen_FW_FNC_AddItem: Warning adding %5 '%1' to a unit that already has a %5, in %3, case %4";
            };
            _message = format [_message, _item, _position, _unit, _loadoutType, _type, _backpack];
            _message call Olsen_FW_FNC_DebugMessage;
        };
    };

    // if no position is specified, try to put the item in an appropriate slot
    if (_position isEqualTo "none") then {
        if (primaryWeapon _unit isEqualTo "" && {"Rifle" in _parents}) exitWith {
            _unit addWeaponGlobal _item;
            _succes = true;
        };
        if (handgunWeapon _unit isEqualTo "" && {"Pistol" in _parents}) exitWith {
            _unit addWeaponGlobal _item;
            _succes = true;
        };
        if (secondaryWeapon _unit isEqualTo "" && {"Launcher" in _parents}) exitWith {
            _unit addWeaponGlobal _item;
            _succes = true;
        };
        if (_type in ["Map", "GPS", "Compass", "Watch", "NVGoggles"] && {[_unit, _type] call Olsen_FW_FNC_CanLinkItem}) exitWith {
            _unit linkItem _item;
            _succes = true;
        };
        if (_type isEqualTo "Uniform" && {_uniform isEqualTo ""}) exitWith {
            _unit forceAddUniform _item;
            _succes = true;
        };
        if (_type isEqualTo "Vest" && {_vest isEqualTo ""}) exitWith {
            _unit addVest _item;
            _succes = true;
        };
        if (_type isEqualTo "Backpack" && {_backpack isEqualTo ""}) exitWith {
            _unit addBackpackGlobal _item;
            _succes = true;
        };
        if (_type isEqualTo "Headgear" && {_headgear isEqualTo ""}) exitWith {
            _unit addHeadgear _item;
            _succes = true;
        };
        if (_type isEqualTo "Glasses" && {_goggles isEqualTo ""}) exitWith {
            _unit addGoggles _item;
            _succes = true;
        };
        if (_type isEqualTo "Binocular" && {_binocular isEqualTo ""}) exitWith {
            _unit addWeaponGlobal _item;
            _succes = true;
        };
        if (_type in ["AccessoryMuzzle", "AccessoryPointer", "AccessorySights", "AccessoryBipod"]) exitWith {
            if ([primaryWeapon _unit, _item] call Olsen_FW_FNC_CanAttachItem) exitWith {
                if (!(_type in primaryWeaponItems _unit)) then {
                    _unit addPrimaryWeaponItem _item;
                    _succes = true;
                };
            };
            if ([handgunWeapon _unit, _item] call Olsen_FW_FNC_CanAttachItem) exitWith {
                if (!(_type in handgunItems _unit)) then {
                    _unit addHandgunItem _item;
                    _succes = true;
                };
            };
            if ([secondaryWeapon _unit, _item] call Olsen_FW_FNC_CanAttachItem) exitWith {
                if (!(_type in secondaryWeaponItems _unit)) then {
                    _unit addSecondaryWeaponItem _item;
                    _succes = true;
                };
            };
        };
    } else { // if a position is specified, try to put it in the specified container
        switch (_position) do {
            case "uniform": {
                if (FW_enableOverfill && {_uniform != ""}) exitWith {
                    (uniformContainer _unit) addItemCargoGlobal [_item, 1];
                    _succes = true;
                };
                if ([_unit, _item, 1, true, false, false] call CBA_fnc_canAddItem) exitWith {
                    _unit addItemToUniform _item;
                    _succes = true;
                };
            };
            case "vest": {
                if (FW_enableOverfill && {_vest != ""}) exitWith {
                    (vestContainer _unit) addItemCargoGlobal [_item, 1];
                    _succes = true;
                };
                if ([_unit, _item, 1, false, true, false] call CBA_fnc_canAddItem) exitWith {
                    _unit addItemToVest _item;
                    _succes = true;
                };
            };
            case "backpack": {
                if (FW_enableOverfill && {_backpack != ""} && {(getNumber (configFile >> "CfgVehicles" >> (_backpack) >> "maximumLoad")) > 0}) exitWith {
                    (backpackContainer _unit) addItemCargoGlobal [_item, 1];
                    _succes = true;
                };
                if ([_unit, _item, 1, false, false, true] call CBA_fnc_canAddItem) exitWith {
                    _unit addItemToBackpack _item;
                    _succes = true;
                };
            };
        };
        if (!_succes) then {
            private _message = format ["Olsen_FW_FNC_AddItem: Warning %1 overflown from %2, in %3, case %4", _item, _position, _unit, _loadoutType];
            _message call Olsen_FW_FNC_DebugMessage;
        };
    };

    if (!_succes && !FW_enableOverfill) exitWith { // if overfill is disabled and the item hasn't been placed, try to find an alternate container
        if ([_unit, _item] call CBA_fnc_canAddItem) then {
            _unit addItem _item;
            _succes = true;
        } else {
            private _message = "Olsen_FW_FNC_AddItem: Warning couldn't fit %1 anywhere, originally intended for position %2, in %3, case %4";

            if (_position isEqualTo "none") then {
                _message = "Olsen_FW_FNC_AddItem: Warning couldn't fit %1 (type %5) anywhere, in %3, case %4";
            };

            _message = format [_message, _item, _position, _unit, _loadoutType, _type];
            _message call Olsen_FW_FNC_DebugMessage;
        };
    };

    if (!_succes && FW_enableOverfill) exitWith { // if nothing else has worked just stuff it somewhere
        if (_backpack != "" && {getNumber (configFile >> "CfgVehicles" >> (_backpack) >> "maximumLoad") > 0}) exitWith {
            (backpackContainer _unit) addItemCargoGlobal [_item, 1];
            _succes = true;
        };
        if (_vest != "") exitWith {
            (vestContainer _unit) addItemCargoGlobal [_item, 1];
            _succes = true;
        };
        if (_uniform != "") exitWith {
            (uniformContainer _unit) addItemCargoGlobal [_item, 1];
            _succes = true;
        };
    };
};
