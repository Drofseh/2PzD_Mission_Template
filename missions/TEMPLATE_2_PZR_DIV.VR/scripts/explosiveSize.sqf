// Adds a CBA context menus to allow the explosives to be subdivided or combined.

[
    "SatchelCharge_Remote_Mag",
    "CONTAINER",
    [
        "Divide into four demo charges.",
        "Turns the satchel charge into four demo charges."
    ],
    nil,
    nil,
    {
        params ["_unit", "_container", "_item", "_slot", "_params"];

    },
    {
        params ["_unit", "_container", "_item", "_slot", "_params"];

        if (_item isEqualTo "DemoCharge_Remote_Mag") exitWith {
            [["This can't be divided any smaller."], true] call CBA_fnc_notify;
        };

        if (_item in uniformItems _unit) then {
            _unit removeItemFromUniform _item;
            } else {
            if (_item in vestItems _unit) then {
                _unit removeItemFromVest _item;
            } else {
                if (_item in backpackItems _unit) then {
                    _unit removeItemFromBackpack _item;
                } else {
                    _unit removeItem _item;
                };
            };
        };
        _container addItemCargoGlobal ["DemoCharge_Remote_Mag", 4];

        true
    },
    false,
    []
] call CBA_fnc_addItemContextMenuOption;

[
    "DemoCharge_Remote_Mag",
    "CONTAINER",
    [
        "Turn into satchel charge.",
        "Turns four demo charges into a satchel charge."
    ],
    nil,
    nil,
    {
        true
    },
    {
        params ["_unit", "_container", "_item", "_slot", "_params"];

        private _items = uniformItems _unit + vestItems _unit + backpackItems _unit;

        if (({_x isEqualTo _item} count _items) > 3) then {
            for "_i" from 1 to 4 do {
                if (_item in uniformItems _unit) then {
                    _unit removeItemFromUniform _item;
                    } else {
                    if (_item in vestItems _unit) then {
                        _unit removeItemFromVest _item;
                    } else {
                        if (_item in backpackItems _unit) then {
                            _unit removeItemFromBackpack _item;
                        } else {
                            _unit removeItem _item;
                        };
                    };
                };
            };
            _container addItemCargoGlobal ["SatchelCharge_Remote_Mag", 1];
        } else {
            [["You don't have enough explosives to make a bigger charge."], true] call CBA_fnc_notify;
        };

        true
    },
    false,
    []
] call CBA_fnc_addItemContextMenuOption;

[
    "LIB_US_TNT_4pound_mag",
    "CONTAINER",
    [
        "Divide in two charges.",
        "Turns a 4lb charge into two 2lb charges."
    ],
    nil,
    nil,
    {
        true
    },
    {
        params ["_unit", "_container", "_item", "_slot", "_params"];

        _container addItemCargoGlobal ["LIB_Ladung_Big_MINE_mag", 2];

        true
    },
    true,
    []
] call CBA_fnc_addItemContextMenuOption;

[
    "LIB_Ladung_Big_MINE_mag",
    "CONTAINER",
    [
        "Divide into four charges.",
        "Turns a 2lb charge into four 0.5lb charges."
    ],
    nil,
    nil,
    {
        true
    },
    {
        params ["_unit", "_container", "_item", "_slot", "_params"];

        _container addItemCargoGlobal ["LIB_Ladung_Small_MINE_mag", 4];

        true
    },
    true,
    []
] call CBA_fnc_addItemContextMenuOption;

[
    "LIB_Ladung_Big_MINE_mag",
    "CONTAINER",
    [
        "Turn into larger charge.",
        "Turns two 2lb charges into a 4lb charge."
    ],
    nil,
    nil,
    {
        true
    },
    {
        params ["_unit", "_container", "_item", "_slot", "_params"];

        private _items = uniformItems _unit + vestItems _unit + backpackItems _unit;

        if (({_x isEqualTo _item} count _items) > 1) then {
            for "_i" from 1 to 2 do {
                if (_item in uniformItems _unit) then {
                    _unit removeItemFromUniform _item;
                    } else {
                    if (_item in vestItems _unit) then {
                        _unit removeItemFromVest _item;
                    } else {
                        if (_item in backpackItems _unit) then {
                            _unit removeItemFromBackpack _item;
                        } else {
                            _unit removeItem _item;
                        };
                    };
                };
            };
            _container addItemCargoGlobal ["LIB_US_TNT_4pound_mag", 1];
        } else {
            [["You don't have enough explosives to make a bigger charge."], true] call CBA_fnc_notify;
        };

        true
    },
    false,
    []
] call CBA_fnc_addItemContextMenuOption;

[
    "LIB_Ladung_Small_MINE_mag",
    "CONTAINER",
    [
        "Turn into larger charge.",
        "Turns four 0.5lb charges into a 2lb charge."
    ],
    nil,
    nil,
    {
        true
    },
    {
        params ["_unit", "_container", "_item", "_slot", "_params"];

        private _items = uniformItems _unit + vestItems _unit + backpackItems _unit;

        if (({_x isEqualTo _item} count _items) > 3) then {
            for "_i" from 1 to 4 do {
                if (_item in uniformItems _unit) then {
                    _unit removeItemFromUniform _item;
                    } else {
                    if (_item in vestItems _unit) then {
                        _unit removeItemFromVest _item;
                    } else {
                        if (_item in backpackItems _unit) then {
                            _unit removeItemFromBackpack _item;
                        } else {
                            _unit removeItem _item;
                        };
                    };
                };
            };
            _container addItemCargoGlobal ["LIB_Ladung_Big_MINE_mag", 1];
        } else {
            [["You don't have enough explosives to make a bigger charge."], true] call CBA_fnc_notify;
        };

        true
    },
    false,
    []
] call CBA_fnc_addItemContextMenuOption;
