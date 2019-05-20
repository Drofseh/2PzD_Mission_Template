/*
 * Author: Olsen
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

params ["_unit", "_loadoutType", "_item", "_amount", "_position", "_succes", "_parents", "_type", "_message", "_badData"];

if (isNil "_amount") then {
    _amount = 1;
};

if (isNil "_position") then {
    _position = "none";
};

_badData = false;

if !([_item, _unit] call FNC_checkClassname) exitWith {};

if (typeName _amount != "SCALAR") then {
    _badData = true;

    ("Item amount is not a number in this loadout: " + (str _this)) call FNC_DebugMessage;
    diag_log ("Item amount is not a number in this loadout: " + (str _this));
};

if (typeName _position != "STRING") then {

    _badData = true;
    ("Position is not a string in this loadout: " + (str _this)) call FNC_DebugMessage;
    diag_log ("Position is not a string in this loadout: " + (str _this));

} else {
    if (_position != "none" && {_position != "backpack" && _position != "vest" && _position != "uniform"}) then {

        _badData = true;
        ("Position string is misspelled or invalid in this loadout: " + (str _this)) call FNC_DebugMessage;
        diag_log ("Position string is misspelled or invalid in this loadout: " + (str _this));

    };
};

if (_badData) exitWith {};

for "_x" from 1 to _amount do {
    _succes = false;
    _parents = [configFile >> "CFGweapons" >> _item, true] call BIS_fnc_returnParents;
    _type = (_item call BIS_fnc_itemType) select 1;

    if (_position == "none") then {
        if (primaryWeapon _unit == "" && "Rifle" in _parents) exitWith {
            _unit addWeaponGlobal _item;
            _succes = true;
        };
        if (handgunWeapon _unit == "" && "Pistol" in _parents) exitWith {
            _unit addWeaponGlobal _item;
            _succes = true;
        };
        if (secondaryWeapon _unit == "" && "Launcher" in _parents) exitWith {
            _unit addWeaponGlobal _item;
            _succes = true;
        };
        if (_type in ["Map", "GPS", "Compass", "Watch", "NVGoggles"] && {[_unit, _type] call FNC_CanLinkItem}) exitWith {
            _unit linkItem _item;
            _succes = true;
        };
        if (_type == "uniform" && uniform _unit == "") exitWith {
            _unit forceAddUniform _item;
            _succes = true;
        };
        if (_type == "vest" && vest _unit == "") exitWith {
            _unit addVest _item;
            _succes = true;
        };
        if (_type == "backpack" && backpack _unit == "") exitWith {
            _unit addBackpackGlobal _item;
            _succes = true;
        };
        if (_type == "Headgear" && headgear _unit == "") exitWith {
            _unit addHeadgear _item;
            _succes = true;
        };
        if (_type == "Glasses" && goggles _unit == "") exitWith {
            _unit addGoggles _item;
            _succes = true;
        };
        if (_type == "Binocular" && binocular _unit == "") exitWith {
            _unit addWeaponGlobal _item;
            _succes = true;
        };
        if (_type in ["AccessoryMuzzle", "AccessoryPointer", "AccessorySights", "AccessoryBipod"]) exitWith {
            if ([primaryWeapon _unit, _item] call FNC_CanAttachItem) then {
                if (!(_type in primaryWeaponItems _unit)) then {
                    _unit addPrimaryWeaponItem _item;
                    _succes = true;
                };
            } else {
                if ([handgunWeapon _unit, _item] call FNC_CanAttachItem) then {
                    if (!(_type in handgunItems _unit)) then {
                        _unit addHandgunItem _item;
                        _succes = true;
                    };
                } else {
                    if ([secondaryWeapon _unit, _item] call FNC_CanAttachItem) then {
                        if (!(_type in secondaryWeaponItems _unit)) then {
                            _unit addSecondaryWeaponItem _item;
                            _succes = true;
                        };
                    };
                };
            };
        };
    } else {
        if (!_succes) then {
            switch (_position) do {
                case "backpack": {
                    if (_unit canAddItemToBackpack _item || FW_enableOverfill) then {
                        if (FW_enableOverfill) then {
                            (backpackContainer _unit) addItemCargoGlobal [_item, 1];
                        } else {
                            _unit addItemToBackpack _item;
                        };
                        _succes = true;
                    };
                };
                case "vest": {
                    if (_unit canAddItemToVest _item || FW_enableOverfill) then {
                        if (FW_enableOverfill) then {
                            (vestContainer _unit) addItemCargoGlobal [_item, 1];
                        } else {
                            _unit addItemToVest _item;
                        };
                        _succes = true;
                    };
                };
                case "uniform": {
                    if (_unit canAddItemToUniform _item || FW_enableOverfill) then {
                        if (FW_enableOverfill) then {
                            (uniformContainer _unit) addItemCargoGlobal [_item, 1];
                        } else {
                            _unit addItemToUniform _item;
                        };
                        _succes = true;
                    };
                };
            };
            if (!_succes) then {
                (format ["FNC_AddItem: Warning %1 overflown from %2, in %3, case %4", _item, _position, _unit, _loadoutType]) call FNC_DebugMessage;
            };
        };
    };

    if (!_succes) then {
        if (_unit canAdd _item && _type != "backpack" && _type != "vest" && _type != "uniform" && _type != "Headgear" && _type != "Glasses" && _type != "Binocular") then {
            _unit addItem _item;
            _succes = true;
        } else {
            _message = "FNC_AddItem: Warning couldn't fit %1 anywhere, originally intended for %2, in %3, case %4";

            if (_position == "none") then {
                _message = "FNC_AddItem: Warning couldn't fit %1 (type %5) anywhere, in %3, case %4";
            };
            (format [_message, _item, _position, _unit, _loadoutType, _type]) call FNC_DebugMessage;
        };
    };
};
