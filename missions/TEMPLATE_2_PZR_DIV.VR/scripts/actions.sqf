// Add action to check remaining ammunition in vehicle
call {
    private _conditionCheck = {True};

    private _statementCheck = {
        private _magList = magazinesAllTurrets this;

        if (_magList isEqualTo []) then {
            "This vehicle is unarmed" call CBA_fnc_notify;
        } else {
            _magAmmoList = [["Vehicle Ammuntion Remaining:"]];

            {
                private _magRounds = _x select 2;
                if (_magRounds isEqualTo 0) then {
                    //ignore the mag if it has no ammo
                } else {
                    private _magClass = _x select 0;
                    private _turret = _x select 1;

                    private _magName = getText (configFile >> "CfgMagazines" >> _magClass >> "DisplayName");
                    private _magCount = getNumber (configFile >> "CfgMagazines" >> _magClass >> "count");

                    _magAmmoList = _magAmmoList + [(format ["%1 (%2/%3)", _magName, _magRounds, _magCount])];
                };
            } forEach _magList;

            _magAmmoList call CBA_fnc_notify;
        };
    };

    private _actionCheck = ["Check Vehicle Ammunition","Check Vehicle Ammunition","",_statementCheck,_conditionCheck] call ace_interact_menu_fnc_createAction;

    ["LandVehicle", 1, ["ACE_SelfActions"], _actionCheck,true] call ace_interact_menu_fnc_addActionToClass;
    ["Air", 1, ["ACE_SelfActions"], _actionCheck,true] call ace_interact_menu_fnc_addActionToClass;
    ["Ship", 1, ["ACE_SelfActions"], _actionCheck,true] call ace_interact_menu_fnc_addActionToClass;
};
