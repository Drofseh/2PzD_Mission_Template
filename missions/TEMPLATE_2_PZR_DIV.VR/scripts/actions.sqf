// Add action to check remaining ammunition in vehicle
call {
    Olsen_FW_FNC_checkVehicleAmmo = {
        params ["_vehicle","_magListAll","_magList","_magCurrentRoundCount","_magClass","_magName","_magCapacity","_currentOutput","_existingIndex","_previousEntry","_previousNumber","_magListFinal","_magCount","_magString","_hint"];

        _magListAll = magazinesAllTurrets _vehicle;

        if (_magListAll isEqualTo []) then {
            [["This vehicle is unarmed"], true] call CBA_fnc_notify;
        } else {
            _magList = [];

            {
                _magCurrentRoundCount = _x select 2;

                //sort through magazines that have ammo, create an array with the number of mags and a formated string with display name and ammo count, add them to the list
                if !(_magCurrentRoundCount isEqualTo 0) then {
                    _magClass = _x select 0;
                    _magName = getText (configFile >> "CfgMagazines" >> _magClass >> "DisplayName");

                    if (_magName == "") exitWith {};

                    _magCapacity = getNumber (configFile >> "CfgMagazines" >> _magClass >> "count");
                    _currentOutput = [(format ["%1 (%2/%3) x ", _magName, _magCurrentRoundCount, _magCapacity])]; //remove capacity and just show current ammo count?
                    _existingIndex = _magList find _currentOutput;

                    if (_existingIndex >= 0) then {
                        _previousEntry = _magList select _existingIndex;
                        _previousNumber = (_magList select (_existingIndex + 1) select 0);
                        _magList set [_existingIndex + 1, [(_previousNumber + 1)]];
                    } else {
                        _magList = _magList + [_currentOutput] + [[1]];
                    };
                };
            } forEach _magListAll;

            // format the data for
            _magListFinal = [];
            {
                _magCount = _magList select _forEachIndex select 0;

                if (_magCount isEqualType 0) then {
                    _magString = [(format ["%1%2", (_magList select (_forEachIndex - 1) select 0), _magCount])];
                    _magListFinal pushBack _magString;
                };
            } forEach _magList;
            _magListFinal sort false;

            _hint = [["Vehicle Ammuntion Remaining:",1.2]];
            _hint append _magListFinal;
            _hint set [count _hint, true];

            _hint call CBA_fnc_notify;
        };
    };

    private _conditionCheck = {True};

    private _statementCheck = {
        [this] call Olsen_FW_FNC_checkVehicleAmmo;
    };

    private _actionCheck = ["Check Vehicle Ammunition","Check Vehicle Ammunition","",_statementCheck,_conditionCheck] call ace_interact_menu_fnc_createAction;

    ["LandVehicle", 1, ["ACE_SelfActions"], _actionCheck,true] call ace_interact_menu_fnc_addActionToClass;
    ["Air", 1, ["ACE_SelfActions"], _actionCheck,true] call ace_interact_menu_fnc_addActionToClass;
    ["Ship", 1, ["ACE_SelfActions"], _actionCheck,true] call ace_interact_menu_fnc_addActionToClass;
};
