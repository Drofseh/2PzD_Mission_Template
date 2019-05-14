// Add action to check remaining ammunition in vehicle
call {
    private _conditionCheck = {True};

    private _statementCheck = {
        params ["_magListAll","_magList","_magCurrentRoundCount","_magClass","_magName","_magCapacity","_currentOutput","_existingIndex","_previousEntry","_previousNumber","_magListFinal","_magCount","_magString","_hint"];
        _magListAll = magazinesAllTurrets this;

        if (_magListAll isEqualTo []) then {
            "This vehicle is unarmed" call CBA_fnc_notify;
        } else {
            _magList = [];

            {
                _magCurrentRoundCount = _x select 2;
                if (_magCurrentRoundCount isEqualTo 0) then {
                    //ignore the mag if it has no ammo
                } else {
                    _magClass = _x select 0;
                    _magName = getText (configFile >> "CfgMagazines" >> _magClass >> "DisplayName");

                    if (_magName == "") exitWith {};

                    _magCapacity = getNumber (configFile >> "CfgMagazines" >> _magClass >> "count");
                    _currentOutput = [(format ["x %1 (%2/%3)", _magName, _magCurrentRoundCount, _magCapacity])]; //remove capacity and just show current ammo count?
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

            _magListFinal = [];
            {
                _magCount = _magList select _forEachIndex select 0;

                if (_magCount isEqualType 0) then {
                    _magString = [str _magCount + (_magList select (_forEachIndex - 1) select 0)];
                    _magListFinal pushBack _magString;
                };
            } forEach _magList;

            _magListFinal sort false;
            _hint = [["Vehicle Ammuntion Remaining:"]];
            _hint append _magListFinal;

            _hint call CBA_fnc_notify;
        };
    };

    private _actionCheck = ["Check Vehicle Ammunition","Check Vehicle Ammunition","",_statementCheck,_conditionCheck] call ace_interact_menu_fnc_createAction;

    ["LandVehicle", 1, ["ACE_SelfActions"], _actionCheck,true] call ace_interact_menu_fnc_addActionToClass;
    ["Air", 1, ["ACE_SelfActions"], _actionCheck,true] call ace_interact_menu_fnc_addActionToClass;
    ["Ship", 1, ["ACE_SelfActions"], _actionCheck,true] call ace_interact_menu_fnc_addActionToClass;
};
