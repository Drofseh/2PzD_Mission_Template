
// Add action to check remaining ammunition in vehicle
call {
    Olsen_FW_FNC_checkVehicleAmmo = {
        private _vehicle = vehicle player;
        private _magListAll = magazinesAllTurrets _vehicle;

        private _turrets = allTurrets _vehicle;
        private _turretNames = [];

        private _pylonConfigPath = configOf _vehicle >> "Components" >> "TransportPylonsComponent" >> "pylons";
        private _pylonMagazines = getPylonMagazines _vehicle;
        private _pylonCount = count _pylonConfigPath;
        private _pylonMagazinesCount = count _pylonMagazines;

        // diag_log "_magListAll";
        // diag_log _magListAll;

        if (_magListAll isEqualTo [] && {_pylonMagazinesCount < 1}) exitWith {
            [["This vehicle is unarmed"], true] call CBA_fnc_notify;
        };

        if (_pylonCount > 0 && {_pylonMagazinesCount > 0}) then {
            _turretNames pushBack ["Pylons","Pylons"];
        };
        {
            private _name = getText ([_vehicle, _x] call BIS_fnc_turretConfig >> "gunnerName");
            _turretNames pushBack [_name,_x];
        } forEach _turrets;

        // diag_log "_turretNames";
        // diag_log _turretNames;

        private _magListFinal = [];

        {
            private _currentTurrentIndex = _x select 1;
            private _currentTurrentName = _x select 0;
            // diag_log "_currentTurrentIndex";
            // diag_log _currentTurrentIndex;
            // diag_log "_currentTurrentName";
            // diag_log _currentTurrentName;

            if (_currentTurrentIndex isEqualType []) then {

                private _magListTurret = [];

                {
                    private _magCurrentTurret = _x select 1;

                    if (_magCurrentTurret isEqualTo _currentTurrentIndex) then {

                        private _magCurrentRoundCount = _x select 2;

                        //sort through magazines that have ammo, create an array with the number of mags and a formated string with display name and ammo count, add them to the list
                        if !(_magCurrentRoundCount isEqualTo 0) then {

                            private _magClass = _x select 0;
                            private _magName = getText (configFile >> "CfgMagazines" >> _magClass >> "DisplayName");

                            if (_magName isEqualTo "") exitWith {};

                            private _magCapacity = getNumber (configFile >> "CfgMagazines" >> _magClass >> "count");
                            private _outputString = "%1 (%2/%3) x ";
                            if (_magCapacity < 2) then {
                                _outputString = "%1 x ";
                            }
                            private _currentOutput = [(format [_outputString, _magName, _magCurrentRoundCount, _magCapacity])]; //remove capacity and just show current ammo count?
                            private _existingIndex = _magListTurret find _currentOutput;
                            // diag_log "_currentOutput";
                            // diag_log _currentOutput;

                            if (_existingIndex > -1) then {
                                private _previousNumber = (_magListTurret select (_existingIndex + 1) select 0);
                                _magListTurret set [_existingIndex + 1, [(_previousNumber + 1)]];
                            } else {
                                _magListTurret = _magListTurret + [_currentOutput] + [[1]];
                            };
                        };
                    };
                } forEach _magListAll;

                // diag_log "_magListTurret";
                // diag_log _magListTurret;

                // format the data for output hint
                private _magListTurretFinal = [];

                {
                    private _magCount = _magListTurret select _forEachIndex select 0;

                    if (_magCount isEqualType 0) then {
                        private _magString = [(format ["%1%2", (_magListTurret select (_forEachIndex - 1) select 0), _magCount])];

                        // diag_log "_magString";
                        // diag_log _magString;

                        _magListTurretFinal pushBack _magString;

                        // diag_log "_magListTurretFinal";
                        // diag_log _magListTurretFinal;
                    };
                } forEach _magListTurret;

                if !(_magListTurretFinal isEqualTo []) then {
                    _magListTurretFinal sort false;
                    // diag_log "_magListTurretFinalSorted";
                    // diag_log _magListTurretFinal;

                    //insert turret name to front of list
                    _magListTurretFinal append [[(_currentTurrentName + ":"),1.1]];
                    _magListTurretFinal append [""];
                    reverse _magListTurretFinal;
                    // diag_log "_magListTurretFinalReversed";
                    // diag_log _magListTurretFinal;

                    _magListFinal append _magListTurretFinal;
                };
            } else {
                if (_currentTurrentIndex isEqualType "" && {_currentTurrentIndex isEqualTo "Pylons"}) then {
                    private _pylons = "true" configClasses (_pylonConfigPath);
                    private _magListTurret = [];
                    // diag_log "_pylonConfigPath";
                    // diag_log _pylonConfigPath;
                    // diag_log "_pylonCount";
                    // diag_log _pylonCount;
                    // diag_log "_pylons";
                    // diag_log _pylons;
                    // diag_log "_pylonMagazines";
                    // diag_log _pylonMagazines;

                    for "_i" from 0 to (_pylonCount - 1) do {
                        private _pylon = configName (_pylons select _i);
                        private _magClass = (_pylonMagazines select _i);
                        private _magName = getText (configFile >> "CfgMagazines" >> _magClass >> "DisplayName");
                        private _magCapacity = getNumber (configFile >> "CfgMagazines" >> _magClass >> "count");
                        private _magCurrentRoundCount = _vehicle ammoOnPylon _pylon;
                        private _outputString = "%1 (%2/%3) x ";
                        if (_magCapacity < 2) then {
                            _outputString = "%1 x ";
                        }
                        private _currentOutput = [(format [_outputString, _magName, _magCurrentRoundCount, _magCapacity])];
                        private _existingIndex = _magListTurret find _currentOutput;
                        // diag_log "_pylonMagazines";
                        // diag_log _pylonMagazines;
                        // diag_log "_pylon";
                        // diag_log _pylon;
                        // diag_log "_i";
                        // diag_log _i;
                        // diag_log "_magClass";
                        // diag_log _magClass;
                        // diag_log "_magName";
                        // diag_log _magName;
                        // diag_log "_magCapacity";
                        // diag_log _magCapacity;
                        // diag_log "_magCurrentRoundCount";
                        // diag_log _magCurrentRoundCount;
                        // diag_log "_currentOutput";
                        // diag_log _currentOutput;

                        if (_existingIndex > -1) then {
                            private _previousNumber = (_magListTurret select (_existingIndex + 1) select 0);
                            _magListTurret set [_existingIndex + 1, [(_previousNumber + 1)]];
                        } else {
                            _magListTurret = _magListTurret + [_currentOutput] + [[1]];
                        };

                        // diag_log "_magListTurret";
                        // diag_log _magListTurret;
                    };

                    // format the data for output hint
                    private _magListTurretFinal = [];

                    {
                        private _magCount = _magListTurret select _forEachIndex select 0;

                        if (_magCount isEqualType 0) then {
                            private _magString = [(format ["%1%2", (_magListTurret select (_forEachIndex - 1) select 0), _magCount])];

                            // diag_log "_magString";
                            // diag_log _magString;

                            _magListTurretFinal pushBack _magString;

                            // diag_log "_magListTurretFinal";
                            // diag_log _magListTurretFinal;
                        };
                    } forEach _magListTurret;

                    if !(_magListTurretFinal isEqualTo []) then {
                        _magListTurretFinal sort false;
                        // diag_log "_magListTurretFinalSorted";
                        // diag_log _magListTurretFinal;

                        //insert turret name to front of list
                        _magListTurretFinal append [[("Pylons:"),1.1]];
                        _magListTurretFinal append [""];
                        reverse _magListTurretFinal;
                        // diag_log "_magListTurretFinalReversed";
                        // diag_log _magListTurretFinal;

                        _magListFinal append _magListTurretFinal;
                    };
                };
            };
        } forEach _turretNames;

        private _hint = [["Vehicle Ammuntion Remaining:",1.3]];
        _hint append _magListFinal;
        _hint set [count _hint, true];
        _hint call CBA_fnc_notify;
        // diag_log _hint;
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
